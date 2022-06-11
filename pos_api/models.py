from django.db import models
from datetime import date
from django.conf import settings
# Create your models here.
from inventory_api.models import Inventory_location, Product, ProductSizeVariant
from customer_profile_api.models import CustomerProfile
from settings_api.models import TaxRate
# from customer_order_api.models import PaymentDetails

class Outlet(models.Model):
    id = models.AutoField(primary_key=True)
    receipt_template_choices = (
        ('NONE', 'Choose...'),
        ('POS_RECEIPT', 'POS sales receipt'),
    )
    email_template_choices = (
        ('NONE', 'Choose...'),
        ('EMAIL_RECEIPT', 'POS sales email receipt'),
    )
    outlet_name = models.CharField(max_length=150)
    location_name = models.CharField(max_length=150, null=True, blank=True)
    email = models.EmailField(max_length=50, null=True, blank=True)
    phone = models.CharField(max_length=15, null=True, blank=True)
    receipt_template = models.CharField(
        max_length=50, choices=receipt_template_choices, default='NONE', null=True, blank=True)
    email_template = models.CharField(
        max_length=50, choices=email_template_choices, default='NONE', null=True, blank=True)
    inventory_location = models.ForeignKey(Inventory_location, on_delete=models.CASCADE, related_name="inventory_location", blank=True, null=True)
    country_name = models.CharField(max_length=100, null=True, blank=True)
    division = models.CharField(max_length=100, null=True, blank=True)
    postal_code = models.CharField(max_length=20, null=True, blank=True)
    city = models.CharField(max_length=50, null=True, blank=True)
    address1 = models.CharField(max_length=120, null=True, blank=True)
    address2 = models.CharField(max_length=120, null=True, blank=True)
    full_address = models.CharField(max_length=240, null=True, blank=True)
    tax = models.ForeignKey(TaxRate, on_delete=models.CASCADE,
                            related_name='outlet_tax_rate', null=True, blank=True)
    slug = models.SlugField(null=True, blank=True, unique=True)
    cash_management = models.BooleanField(default=False)
    is_active = models.BooleanField(default=False)
    is_default = models.BooleanField(default=False)
    is_deleted = models.BooleanField(default=False)
    selected = models.BooleanField(default=False)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def save(self, *args, **kwargs):
        if self.full_address is None:
            self.full_address = self.address1+' '+self.address2
        super(Outlet, self).save(*args, **kwargs)

    def __str__(self):
        return self.outlet_name


class Register(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=150)
    outlet = models.ForeignKey(Outlet, on_delete=models.CASCADE, related_name='register_outlet')
    opened_at = models.DateTimeField(blank=True, null=True)
    closed_at = models.DateTimeField(blank=True, null=True)
    opened_by = models.ForeignKey(CustomerProfile, on_delete=models.CASCADE, related_name='register_opened_by', blank=True, null=True)
    closed_by = models.ForeignKey(CustomerProfile, on_delete=models.CASCADE, related_name='register_closed_by', blank=True, null=True)
    cash_management = models.BooleanField(default=True)
    is_active = models.BooleanField(default=True)
    is_deleted = models.BooleanField(default=False)
    status = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name
