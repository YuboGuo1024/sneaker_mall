from django.contrib.auth import logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.db.models import Q
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.urls import reverse

from apps.account.forms import RegisterForm, UserAddressForm, UserEditForm
from apps.account.models import Address


def account_register(request):
    # if request.user.is_authenticated:
    #     return

    if request.method == 'POST':
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user = register_form.save(commit=False)
            user.email = register_form.cleaned_data['email']
            user.set_password(register_form.cleaned_data['password'])
            user.is_active = True
            user.save()
            return redirect('apps.account:login')
    else:
        register_form = RegisterForm()
    return render(request, 'account/register.html', {'form': register_form})


@login_required
def dashboard(request):
    return render(request, 'account/dashboard.html')


@login_required
def edit_details(request):
    if request.method == "POST":
        user_form = UserEditForm(instance=request.user, data=request.POST)

        if user_form.is_valid():
            user_form.save()
    else:
        user_form = UserEditForm(instance=request.user)

    return render(request, "account/edit_details.html", {"user_form": user_form})


@login_required
def delete_user(request):
    user = User.objects.get(username=request.user)
    user.is_active = False
    user.save()
    logout(request)
    return redirect("apps.account:delete_confirmation")


@login_required
def view_address(request):
    addresses = Address.objects.filter(user=request.user)
    return render(request, "account/address.html", {"addresses": addresses})


@login_required
def add_address(request):
    if request.method == "POST":
        address_form = UserAddressForm(data=request.POST)
        if address_form.is_valid():
            address_form = address_form.save(commit=False)
            address_form.user = request.user
            address_form.save()
            return HttpResponseRedirect(reverse("apps.account:address"))
    else:
        address_form = UserAddressForm()
    return render(request, "account/edit_address.html", {"form": address_form})


@login_required
def add_delivery_address(request):
    if request.method == "POST":
        address_form = UserAddressForm(data=request.POST)
        if address_form.is_valid():
            address_form = address_form.save(commit=False)
            address_form.user = request.user
            address_form.save()
            return HttpResponseRedirect(reverse("apps.checkout:delivery_address"))
    else:
        address_form = UserAddressForm()
    return render(request, "account/edit_address.html", {"form": address_form})


@login_required
def edit_address(request, id):
    if request.method == "POST":
        address = Address.objects.get(pk=id, user=request.user)
        address_form = UserAddressForm(instance=address, data=request.POST)
        if address_form.is_valid():
            address_form.save()
            return HttpResponseRedirect(reverse("apps.account:address"))
    else:
        address = Address.objects.get(pk=id, user=request.user)
        address_form = UserAddressForm(instance=address)
    return render(request, "account/edit_address.html", {"form": address_form})


@login_required
def delete_address(request, id):
    address = Address.objects.filter(pk=id, user=request.user).delete()
    return redirect("apps.account:address")


@login_required
def set_default(request, id):
    Address.objects.filter(user=request.user, default=True).update(default=False)
    Address.objects.filter(pk=id, user=request.user).update(default=True)

    previous_url = request.META.get("HTTP_REFERER")

    if "delivery_address" in previous_url:
        return redirect("apps.checkout:delivery_address")

    return redirect("apps.account:address")

