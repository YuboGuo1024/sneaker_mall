import os

from ckeditor.fields import RichTextField
from django.db import models
from django.urls import reverse


def brand_upload_path(instance: "Brand", filename: str):
    ext = os.path.splitext(filename)[-1]
    return f"brand/images/{instance.name}{ext}"


def sneaker_upload_path(instance: "SneakerImage", filename: str):
    ext = os.path.splitext(filename)[-1]
    return f"sneaker/images/{instance.id}{ext}"


class Brand(models.Model):
    name = models.CharField(verbose_name='Brand Name', max_length=30, default='')
    icon = models.ImageField(verbose_name='Brand Icon', upload_to=brand_upload_path)
    description = RichTextField(verbose_name='Description', blank=True)

    created_at = models.DateTimeField(verbose_name="Created At", auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(verbose_name='Updated At', auto_now=True)

    def get_absolute_url(self):
        return reverse('apps.sneaker:brand_detail', args=[self.id])

    class Meta:
        db_table = 'tb_sneaker_brand'
        verbose_name = 'Brand'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class Sneaker(models.Model):
    brand = models.ForeignKey(Brand, verbose_name='Brand', on_delete=models.RESTRICT)
    title = models.CharField(verbose_name='Title', max_length=255, null=False, blank=False)
    description = RichTextField(verbose_name='Description', blank=True, null=True)
    market_price = models.DecimalField(verbose_name='Market Price', max_digits=5, decimal_places=2)
    discount_price = models.DecimalField(verbose_name='Discount Price', max_digits=5, decimal_places=2)
    is_active = models.BooleanField(verbose_name='Sneaker Visibility', help_text='Change product visibility',
                                    default=True)

    click_num = models.IntegerField(verbose_name='Click Number', default=0)
    created_at = models.DateTimeField(verbose_name='Created At', auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(verbose_name='Updated At', auto_now=True)

    objects = models.Manager()

    def get_absolute_url(self):
        return reverse('apps.sneaker:sneaker_detail', args=[self.id])

    class Meta:
        db_table = 'tb_sneaker'
        ordering = ('-created_at',)
        verbose_name = 'Sneaker'
        verbose_name_plural = 'Sneakers'

    def __str__(self):
        return self.title


class SneakerImage(models.Model):
    sneaker = models.ForeignKey(Sneaker, on_delete=models.CASCADE, related_name='sneaker_image')
    image = models.ImageField(verbose_name='Image', help_text='Upload a sneaker image', upload_to=sneaker_upload_path)
    is_cover = models.BooleanField(verbose_name='Is cover', default=False)
    created_at = models.DateTimeField(verbose_name='Created At', auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(verbose_name='Updated At', auto_now=True)

    class Meta:
        db_table = 'tb_sneaker_image'
        verbose_name = 'Sneaker Image'
        verbose_name_plural = 'Sneaker Images'


class SneakerSize(models.Model):
    sneaker = models.ForeignKey(Sneaker, on_delete=models.CASCADE, related_name='sneaker_size')
    size = models.FloatField(verbose_name='Sneaker Size', null=False, blank=False)
    stock_num = models.IntegerField(verbose_name='Stock Number', default=0)
    created_at = models.DateTimeField(verbose_name='Created At', auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(verbose_name='Updated At', auto_now=True)

    class Meta:
        db_table = 'tb_sneaker_size'
        verbose_name = 'Sneaker Size'
        verbose_name_plural = verbose_name
