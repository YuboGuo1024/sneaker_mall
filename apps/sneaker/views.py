from django.db.models import Prefetch, Q
from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse

from apps.sneaker.models import Sneaker, SneakerSize, Brand

SORT_RULE_MAP = {
    1: '-click_num',
    2: '-created_at',
    3: '-discount_price',
    4: 'discount_price',
}


def get_sneakers_sort(sort_rule):
    sort_key = SORT_RULE_MAP[sort_rule]
    return Sneaker.objects.prefetch_related('sneaker_image').filter(is_active=True).order_by(sort_key)


def get_sneakers_with_brand_sort(brand_id, sort_rule):
    sort_key = SORT_RULE_MAP[sort_rule]
    brand = get_object_or_404(Brand, id=brand_id)
    sneakers = Sneaker.objects.filter(
        Q(brand_id=brand_id) & Q(is_active=True)
    ).order_by(sort_key)
    return brand, sneakers


def sneaker_sort_return(request, brand_id, sort_rule):
    if brand_id == 0:
        sneakers = get_sneakers_sort(sort_rule)
        return render(request, 'index.html', {'sneakers': sneakers})
    else:
        brand, sneakers = get_sneakers_with_brand_sort(brand_id, sort_rule)
        return render(request, 'sneaker/brand.html', {'brand': brand, 'sneakers': sneakers})


def sneaker_all(request):
    sneakers = get_sneakers_sort(1)
    return render(request, 'index.html', {'sneakers': sneakers})


def get_recommendation(sneaker_id):
    sneaker = get_object_or_404(Sneaker, id=sneaker_id)
    brand_id = sneaker.brand.id
    brand_sneakers = Sneaker.objects.filter(Q(brand_id=brand_id) & (~Q(id=sneaker_id))).order_by('-click_num')
    return brand_sneakers


def sneaker_detail(request, pk):
    sneaker = get_object_or_404(
        Sneaker.objects.prefetch_related(
            Prefetch('sneaker_size', queryset=SneakerSize.objects.order_by('size'))),
        pk=pk, is_active=True
    )

    click_num = sneaker.click_num
    sneaker.click_num = click_num + 1
    sneaker.save()

    other_sneakers = get_recommendation(sneaker.id)
    return render(request, 'sneaker/detail.html', {'sneaker': sneaker, 'other_sneakers': other_sneakers})


def brand_detail(request, pk=None):
    brand, sneakers = get_sneakers_with_brand_sort(pk, 1)
    return render(request, 'sneaker/brand.html', {'brand': brand, 'sneakers': sneakers})


def search(request):
    keywords = request.GET.get('keywords')
    sneakers = Sneaker.objects.none()
    if len(keywords) != 0:
        keyword_list = keywords.split()
        for keyword in keyword_list:
            res = Sneaker.objects.filter(Q(brand__name__icontains=keyword) | Q(title__icontains=keyword))
            if len(res) != 0:
                if len(sneakers) == 0:
                    sneakers = res
                else:
                    sneakers = sneakers & res
    return render(request, 'sneaker/search_result.html', {'sneakers': sneakers})


