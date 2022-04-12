from django.contrib.auth import views as auth_views
from django.urls import path
from django.views.generic import TemplateView

from apps.account import views
from apps.account.forms import UserLoginForm

app_name = 'apps.account'

urlpatterns = [
    path('login/', auth_views.LoginView.as_view(template_name='account/login.html', form_class=UserLoginForm),
         name='login'),
    path('register/', views.account_register, name='register'),
    path('logout/', auth_views.LogoutView.as_view(next_page='/account/login/'), name='logout'),

    path('dashboard/', views.dashboard, name='dashboard'),

    path("profile/edit/", views.edit_details, name="edit_details"),
    path('profile/delete_user/', views.delete_user, name='delete_user'),
    path('profile/delete_confirm/', TemplateView.as_view(template_name='account/delete_confirm.html'),
         name='delete_confirmation'),

    path('address/', views.view_address, name='address'),
    path('add_address/', views.add_address, name='add_address'),
    path('add_delivery_address/', views.add_delivery_address, name='add_delivery_address'),
    path('address/edit/<int:id>', views.edit_address, name='edit_address'),
    path('address/delete/<int:id>', views.delete_address, name='delete_address'),
    path('address/set_default/<int:id>', views.set_default, name='set_default'),

]
