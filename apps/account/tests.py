import pytest

from apps.account.forms import UserAddressForm, RegisterForm


@pytest.mark.parametrize(
    'full_name, phone, address_line, address_line2, town_city, postcode, validity',
    [
        ('john', '123456', 'add1', 'add2', 'NewYork', '123456', True),
        ('', '0123456', 'add2', 'add2', 'NewYork', '123456', False),
    ]
)
def test_address_add(full_name, phone, address_line, address_line2, town_city, postcode, validity):
    form = UserAddressForm(
        data={
            'full_name': full_name,
            'phone': phone,
            'address_line': address_line,
            'address_line2': address_line2,
            'town_city': town_city,
            'postcode': postcode
        }
    )
    assert form.is_valid() is validity


def test_user_create_address(client, user):
    client.force_login(user)
    response = client.post(
        "/account/add_address",
        data={
            "full_name": "test",
            'phone': "test",
            'address_line': "test",
            'address_line2': "test",
            'town_city': "test",
            'postcode': "test"
        }
    )
    assert response.status_code == 301


@pytest.mark.parametrize(
    "username, email, password, validity",
    [
        ("user1", "a@a.com", "12345678", True),
        ("user2", "", "12345678", False),
        ("user3", "c@c.com", "12345678", True),
    ]
)
@pytest.mark.django_db
def test_create_account(username, email, password, validity):
    form = RegisterForm(
        data={
            'username': username,
            'email': email,
            'password': password
        }
    )
    assert form.is_valid() is validity


@pytest.mark.django_db
def test_account_register_render(client):
    response = client.get("/account/register")
    assert response.status_code == 301
