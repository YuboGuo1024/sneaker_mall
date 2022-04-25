import simplejson as json
from datetime import datetime

from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.core.serializers.json import DjangoJSONEncoder
from django.http import JsonResponse, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse

from apps.account.models import Address
from apps.cart.cart import Cart
from apps.checkout.models import DeliveryOptions


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

