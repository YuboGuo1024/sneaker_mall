from django.http import JsonResponse
from django.shortcuts import get_object_or_404, render

from apps.cart.cart import Cart
from apps.sneaker.models import Sneaker


def cart_summary(request):
    cart = Cart(request)
    return render(request, 'cart/summary.html', {'cart': cart})


def cart_add(request):
    cart = Cart(request)
    if request.POST.get('action') == 'post':
        sneaker_id = int(request.POST.get('sneaker_id'))
        sneaker_sz = str(request.POST.get('sneaker_sz'))
        sneaker_qty = int(request.POST.get('sneaker_qty'))
        sneaker = get_object_or_404(Sneaker, id=sneaker_id)
        cart.add(sneaker=sneaker, sz=sneaker_sz, qty=sneaker_qty)

        cart_qty = cart.__len__()
        response = JsonResponse({'qty': cart_qty})
        return response


def cart_delete(request):
    cart = Cart(request)
    if request.POST.get('action') == 'post':
        sneaker_id = int(request.POST.get('sneaker_id'))
        sneaker_sz = str(request.POST.get('sneaker_sz'))

        cart.delete(sneaker_id=sneaker_id, sz=sneaker_sz)

        cart_qty = cart.__len__()
        cart_subtotal = cart.get_subtotal_price()
        response = JsonResponse({'qty': cart_qty, 'subtotal': cart_subtotal})
        return response


def cart_update(request):
    cart = Cart(request)
    if request.POST.get('action') == 'post':
        sneaker_id = int(request.POST.get('sneaker_id'))
        sneaker_sz = str(request.POST.get('sneaker_sz'))
        sneaker_qty = int(request.POST.get('sneaker_qty'))
        cart.update(sneaker_id=sneaker_id, sz=sneaker_sz, qty=sneaker_qty)

        cart_qty = cart.__len__()
        cart_subtotal = cart.get_subtotal_price()
        response = JsonResponse({'qty': cart_qty, 'subtotal': cart_subtotal})
        return response
