from decimal import Decimal

from django.conf import settings
from django.forms import model_to_dict

from apps.checkout.models import DeliveryOptions
from apps.sneaker.models import Sneaker


class Cart:
    """
    A base Cart class, providing some default behaviors that
    can be inherited or overrided, as necessary.
    """

    def __init__(self, request):
        self.session = request.session
        cart = self.session.get(settings.CART_SESSION_ID)
        if settings.CART_SESSION_ID not in request.session:
            cart = self.session[settings.CART_SESSION_ID] = {}

        self.cart = cart

    def add(self, sneaker, sz, qty):
        """
        Adding and updating the users cart session data
        """
        cart_key = self._get_cart_key(sneaker.id, sz)

        if cart_key in self.cart:
            self.cart[cart_key]['qty'] += qty
        else:
            self.cart[cart_key] = {
                'price': str(sneaker.discount_price),
                'qty': qty,
                'sz': sz,
            }
        self.save()

    def delete(self, sneaker_id, sz):
        """ Delete item from session data """
        cart_key = self._get_cart_key(sneaker_id, sz)

        if cart_key in self.cart:
            del self.cart[cart_key]
            self.save()

    def update(self, sneaker_id, sz, qty):
        """
        Update values in session data
        """
        cart_key = self._get_cart_key(sneaker_id, sz)
        if cart_key in self.cart:
            self.cart[cart_key]['qty'] = qty
            self.cart[cart_key]['sz'] = sz

        self.save()

    def clear(self):
        """ Remove cart from session """
        del self.session[settings.CART_SESSION_ID]
        del self.session['purchase']
        self.save()

    def save(self):
        self.session.modified = True

    def get_delivery_price(self):
        new_price = 0.0
        if 'purchase' in self.session:
            new_price = DeliveryOptions.objects.get(id=self.session['purchase']['delivery_id']).delivery_price
        return new_price

    def get_subtotal_price(self):
        return str(sum(
            Decimal(item['price']) * item['qty']
            for item in self.cart.values()
        ))

    def get_total_price(self):
        new_price = 0.0
        subtotal = Decimal(self.get_subtotal_price())

        if 'purchase' in self.session:
            new_price = DeliveryOptions.objects.get(id=self.session['purchase']['delivery_id']).delivery_price

        total = subtotal + Decimal(new_price)

        return str(total)

    def cart_update_delivery(self, delivery_price=0):
        subtotal = Decimal(self.get_subtotal_price())
        return subtotal + Decimal(delivery_price)

    @classmethod
    def _get_cart_key(cls, sneaker_id, sz):
        return f"{sneaker_id}@{sz}"

    @classmethod
    def _unpack_cart_key(cls, cart_key):
        return cart_key.split('@')

    def __iter__(self):
        """
        Collect the sneaker_id in the session data to query the database
        and return sneakers
        """
        cart = self.cart.copy()

        for cart_key in self.cart.keys():
            sneaker_id = self._unpack_cart_key(cart_key)[0]
            cart[cart_key]['sneaker'] = Sneaker.objects.get(id=sneaker_id)

        for item in cart.values():
            item['price'] = item['price']
            item['total_price'] = str(Decimal(item['price']) * item['qty'])
            yield item

    def __len__(self):
        """
        Get the cart data and count the qty of items
        """
        return sum(item['qty'] for item in self.cart.values())
