from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404, redirect

from apps.order.models import Order


@login_required
def order_delete(request, order_id):
    order = get_object_or_404(Order, id=order_id)
    order.is_delete = True
    order.save()
    return redirect('apps.account:user_orders')
