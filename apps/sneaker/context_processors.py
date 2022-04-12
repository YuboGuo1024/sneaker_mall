import json

from django.db.models import Sum

from apps.order.models import Order, OrderItem
from apps.sneaker.models import Brand, Sneaker


def brands(request):
    return {'brands': Brand.objects.all()}


def chart_data(request):
    brands_price = list(
        Brand.objects.annotate(
            total_price=Sum('sneaker__order_sneaker__price')
        ).order_by('name').values('name', 'total_price'))
    brands_qty = list(
        Brand.objects.annotate(
            total_qty=Sum('sneaker__order_sneaker__quantity')
        ).order_by('name').values('name', 'total_qty'))
    names = []
    prices = []
    for item in brands_price:
        names.append(item['name'])
        prices.append(str(item['total_price']))
    qtys = []
    for item in brands_qty:
        qtys.append(str(item['total_qty']))

    return {'brand_names': json.dumps(names), 'brand_prices': json.dumps(prices), 'brand_qtys': qtys}
