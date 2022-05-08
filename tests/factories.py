import factory
from django.contrib.auth.models import User
from faker import Faker

from apps.account.models import Address
from apps.sneaker.models import Sneaker, Brand

fake = Faker()


class UserFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = User

    email = 'a@a.com'
    username = 'user1'
    password = '12345678'


class AddressFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = Address

    user = factory.SubFactory(UserFactory)
    full_name = fake.name()
    phone = fake.phone_number()
    postcode = fake.postcode()
    address_line = fake.street_address()
    address_line2 = fake.street_address()
    town_city = fake.city_suffix()


class BrandFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = Brand

    name = 'Nike'
    icon = 'brand/images/Adidas.png'
    description = fake.text()


class SneakerFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = Sneaker

    brand = factory.SubFactory(BrandFactory)
    title = 'sneaker_title'
    description = fake.text()
    market_price = 89
    discount_price = 80


