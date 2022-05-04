from django.contrib import admin

from apps.checkout.models import DeliveryOptions


@admin.register(DeliveryOptions)
class DeliveryOptionsAdmin(admin.ModelAdmin):
    list_display = ('delivery_name', 'delivery_price', 'delivery_method')