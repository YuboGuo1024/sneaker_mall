from django.urls import path

from apps.checkout import views

app_name = 'apps.checkout'

urlpatterns = [
    path('delivery_choices/', views.delivery_choices, name='delivery_choices'),
    path('cart_update_delivery/', views.cart_update_delivery, name='cart_update_delivery'),
    path('delivery_address/', views.delivery_address, name='delivery_address'),

    path('checkout/', views.checkout, name='checkout'),
    path('payment_successful/<int:order_id>', views.payment_successful, name='payment_successful'),
    path('payment_cancelled/', views.payment_cancelled, name='payment_cancelled'),
    path('payment_process/<int:order_id>/', views.payment_process, name='payment_process'),
]