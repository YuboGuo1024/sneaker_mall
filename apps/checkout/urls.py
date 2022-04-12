from django.urls import path

from apps.checkout import views

app_name = 'apps.checkout'

urlpatterns = [
    path('delivery_choices/', views.delivery_choices, name='delivery_choices'),
    path('cart_update_delivery/', views.cart_update_delivery, name='cart_update_delivery'),
    path('delivery_address/', views.delivery_address, name='delivery_address'),

]