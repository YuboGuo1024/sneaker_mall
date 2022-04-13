from django.contrib import admin

from apps.order.models import Order, OrderItem


@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ('user', 'total_paid', 'order_key', 'payment_option', 'order_status', 'is_delete')
    list_filter = ('user', 'order_status', 'is_delete')
    list_per_page = 20


@admin.register(OrderItem)
class OrderItemAdmin(admin.ModelAdmin):
    list_display = ('order', 'sneaker', 'size', 'price', 'quantity')
    list_filter = ('sneaker__brand', 'order')
    list_per_page = 20
