from django.urls import path

from apps.sneaker import views

app_name = 'apps.sneaker'

urlpatterns = [
    path('', views.sneaker_all, name='index'),
    path('sneaker/<int:pk>', views.sneaker_detail, name='sneaker_detail'),
    path('brand/<int:pk>', views.brand_detail, name='brand_detail'),
    path('search', views.search, name='search'),

    path('sneaker/order/<int:brand_id>/<int:sort_rule>', views.sneaker_sort_return, name='sneaker_sort_return'),
]