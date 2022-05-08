import pytest
from pytest_factoryboy import register

from tests.factories import UserFactory, AddressFactory, BrandFactory, SneakerFactory

register(UserFactory)
register(AddressFactory)
register(BrandFactory)
register(SneakerFactory)


@pytest.fixture
def user(db, user_factory):
    new_user = user_factory.create()
    return new_user


@pytest.fixture
def address(db, address_factory):
    new_address = address_factory.create()
    return new_address


@pytest.fixture
def brand(db, brand_factory):
    return brand_factory.create()


@pytest.fixture
def sneaker(db, sneaker_factory):
    return sneaker_factory.create()
