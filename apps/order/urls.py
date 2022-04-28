from django.urls import path

from apps.order import views

app_name = 'apps.order'

urlpatterns = [
    path('order/delete/<int:order_id>', views.order_delete, name='order_delete')
]