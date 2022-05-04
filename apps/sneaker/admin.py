from django.contrib import admin

from apps.sneaker.models import Brand, SneakerImage, SneakerSize, Sneaker


@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display = ('name',)


class SneakerImageInline(admin.TabularInline):
    model = SneakerImage
    extra = 1


class SneakerSizeInline(admin.TabularInline):
    model = SneakerSize
    extra = 1


@admin.register(Sneaker)
class SneakerAdmin(admin.ModelAdmin):
    inlines = [
        SneakerImageInline,
        SneakerSizeInline
    ]
    list_display = ('title', 'brand', 'discount_price', 'market_price', 'is_active', 'click_num')
    list_filter = ('brand', 'is_active')
    list_per_page = 20
