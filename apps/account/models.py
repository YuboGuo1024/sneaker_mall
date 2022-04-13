from django.db import models
from django.contrib.auth.models import User


class Address(models.Model):
    user = models.ForeignKey(User, verbose_name="User", on_delete=models.CASCADE)
    full_name = models.CharField("Full Name", max_length=150)
    phone = models.CharField("Phone Number", max_length=50)
    postcode = models.CharField("Postcode", max_length=50)
    address_line = models.CharField("Address Line 1", max_length=255)
    address_line2 = models.CharField("Address Line 2", max_length=255)
    town_city = models.CharField("Town/City/State", max_length=255)
    delivery_instructions = models.CharField("Delivery Instructions", max_length=255)
    default = models.BooleanField("Default", default=False)
    created_at = models.DateTimeField(verbose_name="Created At", auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(verbose_name='Updated At', auto_now=True)

    class Meta:
        db_table = "tb_address"
        verbose_name = "Address"
        verbose_name_plural = "Addresses"

    def __str__(self):
        return f"{self.full_name}-{self.town_city}"
