from datetime import datetime

from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.core.serializers.json import DjangoJSONEncoder
from django.http import JsonResponse, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse
from paypal.standard.forms import PayPalPaymentsForm

from apps.account.models import Address
from apps.cart.cart import Cart
from apps.checkout.models import DeliveryOptions
from apps.order.models import OrderItem, Order


@login_required
def delivery_choices(request):
    delivery_options = DeliveryOptions.objects.filter(is_active=True)
    return render(request, 'checkout/delivery_choices.html', {"delivery_options": delivery_options})


@login_required
def cart_update_delivery(request):
    cart = Cart(request)
    if request.POST.get('action') == 'post':
        delivery_option = int(request.POST.get('delivery_option'))
        delivery_type = DeliveryOptions.objects.get(id=delivery_option)
        updated_total_price = cart.cart_update_delivery(delivery_type.delivery_price)

        session = request.session
        if 'purchase' not in request.session:
            session['purchase'] = {'delivery_id': str(delivery_type.id)}
        else:
            session['purchase']['delivery_id'] = str(delivery_type.id)
            session.modified = True
        response = JsonResponse({
            'total': str(updated_total_price),
            'delivery_price': str(delivery_type.delivery_price)
        })
        return response


@login_required
def delivery_address(request):
    if 'purchase' not in request.session:
        messages.success(request, 'Please select delivery option')
        return HttpResponseRedirect(request.META['HTTP_REFERER'])
    addresses = Address.objects.filter(user=request.user).order_by('-default')

    return render(request, 'checkout/delivery_address.html', {'addresses': addresses})


@login_required
def checkout(request):
    cart = Cart(request)
    total_paid = cart.get_total_price()
    address = Address.objects.filter(user=request.user).order_by('-default')[0]
    address_id = address.id
    user_id = address.user_id
    order_key = datetime.now().strftime("%Y%m%d%H%M%S")
    order = Order.objects.create(
        user_id=user_id,
        address_id=address_id,
        total_paid=total_paid,
        order_key=order_key,
        trade_key=order_key,
        payment_option='PayPal',
    )
    order_id = order.id
    for item in cart:
        OrderItem.objects.create(order_id=order_id, sneaker=item['sneaker'], size=item['sz'], price=item['price'],
                                 quantity=item['qty'])

    cart.clear()
    url = reverse('apps.checkout:payment_process', kwargs={'order_id': order_id})
    return HttpResponseRedirect(url)


@login_required
def payment_process(request, order_id):
    print('order_id is', order_id)
    order = get_object_or_404(Order, id=order_id)
    host = request.get_host()

    paypal_dict = {
        'business': settings.PAYPAL_RECEIVER_EMAIL,
        'amount': str(order.total_paid),
        'item_name': str(order.order_key),
        'invoice': str(order.order_key),
        'currency_code': 'GBP',
        'notify_url': f"http://{host}{reverse('paypal-ipn')}",
        'return_url': f"http://{host}{reverse('apps.checkout:payment_successful', kwargs={'order_id': order_id})}",
        'cancel_url': f"http://{host}{reverse('apps.checkout:payment_cancelled')}",
    }
    form = PayPalPaymentsForm(initial=paypal_dict).render()

    return render(request, 'checkout/payment_process.html', {'order': order, 'form': form})


@login_required
def payment_successful(request, order_id):
    print('order_id is in successful', order_id)
    order = get_object_or_404(Order, id=order_id)
    order.order_status = True
    order.save()
    return render(request, 'checkout/payment_successful.html')


@login_required
def payment_cancelled(request):
    return render(request, 'checkout/payment_cancelled.html')