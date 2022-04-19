from django.contrib import admin

from apps.sneaker.models import Brand, SneakerImage, SneakerSize, Sneaker


@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display = ('name', 'description')


class SneakerImageInline(admin.TabularInline):
    model = SneakerImage


class SneakerSizeInline(admin.TabularInline):
    model = SneakerSize


@admin.register(Sneaker)
class SneakerAdmin(admin.ModelAdmin):
    inlines = [
        SneakerImageInline,
        SneakerSizeInline
    ]
