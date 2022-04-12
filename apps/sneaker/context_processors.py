from apps.sneaker.models import Brand


def brands(request):
    return {'brands': Brand.objects.all()}
