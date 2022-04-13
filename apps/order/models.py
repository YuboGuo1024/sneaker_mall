from django.contrib.auth.models import User
from django.db import models

from apps.account.models import Address
from apps.sneaker.models import Sneaker, SneakerSize


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='order_user')
    address = models.ForeignKey(Address, on_delete=models.CASCADE, related_name='order_address')

    total_paid = models.DecimalField(max_digits=8, decimal_places=2)
    order_key = models.CharField(max_length=200)
    trade_key = models.CharField(max_length=200)
    payment_option = models.CharField(max_length=200, blank=True)
    order_status = models.BooleanField(default=False)

    is_delete = models.BooleanField(default=False)

    created_at = models.DateTimeField(verbose_name="Created At", auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(verbose_name='Updated At', auto_now=True)

    class Meta:
        db_table = 'tb_order'
        ordering = ("-created_at",)
        verbose_name = 'Order'
        verbose_name_plural = 'Orders'

    def __str__(self):
        return str(self.order_key)


class OrderItem(models.Model):
    order = models.ForeignKey(Order, related_name='items', on_delete=models.CASCADE)
    sneaker = models.ForeignKey(Sneaker, related_name='order_sneaker', on_delete=models.CASCADE)
    size = models.CharField(verbose_name='Size', max_length=50)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    quantity = models.PositiveIntegerField(default=1)

    created_at = models.DateTimeField(verbose_name="Created At", auto_now_add=True, editable=False)

    class Meta:
        db_table = 'tb_order_item'
        verbose_name = 'OrderItem'
        verbose_name_plural = 'OrderItems'

    def __str__(self):
        return str(self.id)
