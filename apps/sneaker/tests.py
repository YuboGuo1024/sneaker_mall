import pytest
from django.test import TestCase, Client
from django.urls import reverse

from apps.sneaker.models import Sneaker, Brand, SneakerSize, SneakerImage
from faker import Faker

fake = Faker()


def test_brand_str(brand):
    assert brand.__str__() == 'Nike'


def test_sneaker_str(sneaker):
    assert sneaker.__str__() == 'sneaker_title'


@pytest.mark.django_db
def test_index_url(client):
    url = reverse("apps.sneaker:index")
    response = client.get(url)
    assert response.status_code == 200


class SneakerTest(TestCase):

    def setUp(self):
        brand = Brand.objects.create(
            name='Nike',
            icon='brand/images/Nike.png',
            description=fake.text(),
        )

        sneaker = Sneaker.objects.create(
            brand=brand,
            title='sneaker_title1',
            description=fake.text(),
            market_price=30,
            discount_price=10,
        )
        Sneaker.objects.create(brand=brand, title='sneaker_title2', description=fake.text(), market_price=30,
                               discount_price=10)
        Sneaker.objects.create(brand=brand, title='sneaker_title3', description=fake.text(), market_price=30,
                               discount_price=10)
        SneakerImage.objects.create(sneaker=sneaker, image='sneaker/images/None.png', is_cover=True)
        SneakerSize.objects.create(sneaker=sneaker, size=7.5, stock_num=20)

    def test_search(self):
        client = Client()
        response = client.get(reverse('apps.sneaker:search'), {'keywords': 'title'})
        self.assertEqual(response.status_code, 200)

    def test_click_sneaker(self):
        client = Client()
        brand = Brand.objects.get(name='Nike')
        sneaker = Sneaker.objects.get(title='sneaker_title1')

        response1 = client.get(reverse('apps.sneaker:brand_detail', args=[brand.id, ]))
        self.assertEqual(response1.status_code, 200)

        response2 = client.get(reverse('apps.sneaker:sneaker_detail', args=[sneaker.id, ]))
        self.assertEqual(response2.status_code, 200)
        sneaker = Sneaker.objects.get(title='sneaker_title1')
        self.assertEqual(sneaker.click_num, 1)



