from datetime import date
from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from inventory_api.models import Product, ProductCategory
# Create your models here.

class LiveChat(models.Model):
    live_chat_link = models.TextField(max_length=1000, blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
class GoogleAnalytic(models.Model):
    google_analytics_link = models.TextField(
        max_length=1000, blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
class GoogleAD(models.Model):
    google_ads_link = models.TextField(max_length=1000, blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
class FacebookPixel(models.Model):
    facebook_pixel_link = models.TextField(
        max_length=1000, blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
class OrderPlacedFacebookPixel(models.Model):
    order_placed_facebook_pixel_link = models.TextField(
        max_length=1000, blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

class Popup(models.Model):
    image1 = models.ImageField(upload_to='external_application/', null=True, blank=True)
    image2 = models.ImageField(upload_to='external_application/', null=True, blank=True)
    image3 = models.ImageField(upload_to='external_application/', null=True, blank=True)
    popup_enable = models.BooleanField(default=False, null=True, blank=True)

class News(models.Model):
    image1 = models.ImageField(upload_to='external_application/', null=True, blank=True)
    image2 = models.ImageField(upload_to='external_application/', null=True, blank=True)
    image3 = models.ImageField(upload_to='external_application/', null=True, blank=True)
    popup_enable = models.BooleanField(default=False, null=True, blank=True)


class PromoCode(models.Model):
    DISCOUNT_TYPE_CHOICES = (
        ('PERCENTAGE', 'Percentage'),
        ('AMOUNT', 'Fixed Amount'),
    )
    DISCOUNT_ON_CHOICES = (
        ('ALL_ORDERS', 'All Orders'),
        ('ORDERS_OVER', 'Orders Over'),
        ('COLLECTIONS', 'Collections'),
        ('PRODUCTS', 'Products'),
        ('FIRST_ORDER', 'First Order'),
    )
    APPLY_CHOICES = (
        ('ON_ALL_APPLICABLE_ITEMS_IN_THE_ORDER', 'On all applicable items in the order'),
        ('ONCE_PER_ORDER', 'Once per order for an item'),
    )
    # vendor = models.ForeignKey(
    #     Vendor,
    #     on_delete=models.CASCADE,
    #     related_name='vendor_promo_codes',
    #     null=True, blank=True
    # )
    name = models.CharField(max_length=100)
    code = models.CharField(
        max_length=50,
        unique=True
    )
    is_active = models.BooleanField(default=True)
    usage_limit = models.BooleanField(default=True)
    limit = models.PositiveBigIntegerField()
    valid_from = models.DateField()
    valid_to = models.DateField(null=True, blank=True)
    expire_limit = models.BooleanField(default=False)
    discount_type = models.CharField(max_length=20, choices=DISCOUNT_TYPE_CHOICES, default='PERCENTAGE')
    discount = models.DecimalField(decimal_places=2, max_digits=8)
    discount_order_type = models.CharField(max_length=30, choices=DISCOUNT_ON_CHOICES, default='ALL_ORDERS')
    orders_over = models.DecimalField(
        MinValueValidator(0.00),decimal_places=2, max_digits=8, null=True, blank=True)
    collections = models.ManyToManyField(
        ProductCategory,
        blank=True,
        related_name='collections_promo_codes'
    )
    products = models.ManyToManyField(
        Product,
        blank=True,
        related_name='products_promo_codes'
    )
    apply = models.CharField(max_length=80, choices=APPLY_CHOICES, default='ONCE_PER_ORDER')
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['-id']

    def save(self, *args, **kwargs):
        self.code = self.code.replace(' ', '')
        super(PromoCode, self).save(*args, **kwargs)

    # checking for promo code validity
    @property
    def is_valid(self):
        today = date.today()
        if self.is_active and today >= self.valid_from and today <= self.valid_to:
            return True
        return False

    def __str__(self):
        return self.code
