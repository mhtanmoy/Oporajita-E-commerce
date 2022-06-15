from django.db import models
from django.conf import settings
# from pos_api.models import Outlet
User = settings.AUTH_USER_MODEL

# Create your models here.


class GeneralSetting(models.Model):
    CURRENCY_CHOICES = (
        ('BDT', 'BDT(Bangladeshi taka)'),
        ('USD', 'USD(United divisions Dollar)'),
    )
    PRODUCT_SORT_BY_CHOICES = (
        ('NEW_PRODUCT', 'Display New Product First'),
        ('BASED_ON_ORDER', 'Display Based on Customer Order)'),
    )
    store_name = models.CharField(max_length=300)
    business_name = models.CharField(max_length=300, null=True, blank=True)
    email = models.EmailField(null=True, blank=True)
    phone = models.CharField(max_length=50, null=True, blank=True)
    street = models.CharField(max_length=50, null=True, blank=True)
    city = models.CharField(max_length=50, null=True, blank=True)
    country = models.CharField(max_length=100, null=True, blank=True)
    division = models.CharField(max_length=100, null=True, blank=True)
    postal_code = models.CharField(max_length=50, null=True, blank=True)
    currency = models.CharField(
        max_length=100, choices=CURRENCY_CHOICES, default='BDT')
    currency_text = models.CharField(max_length=100, null=True, blank=True)
    product_per_page = models.CharField(max_length=100, null=True, blank=True)
    sort_by = models.CharField(
        max_length=300, choices=PRODUCT_SORT_BY_CHOICES, default='NEW_PRODUCT')
    timezone = models.CharField(max_length=300, null=True, blank=True)
    online = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.store_name

class CheckoutSetting(models.Model):
    guest_checkout = models.BooleanField(default=True)
    create_account = models.BooleanField(default=True)
    seperate_delivery_address = models.BooleanField(default=True)
    social_login = models.BooleanField(default=True)
    document_label = models.CharField(max_length=100, null=True, blank=True)
    billing_address_label = models.CharField(max_length=100, null=True, blank=True)
    delivery_address_label = models.CharField(max_length=100, null=True, blank=True)

class CheckoutFieldSettings(models.Model):
    id = models.AutoField(primary_key=True)
    CHOICE = (
        ('OPTIONAL', 'Optional'),
        ('REQUIRED', 'Required'),
        ('HIDDEN', 'Hidden'),
    )
    checkout_from_all_country = models.BooleanField(default=True, null=True, blank=True)
    customer_note=models.CharField(max_length=100, choices=CHOICE, null=True, blank=True)
    title = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    first_name = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    last_name = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    email = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    company_name = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    phone = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    billing_address_line1 = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    billing_city = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    billing_address_line2 = models.CharField(max_length=100, choices=CHOICE, null=True, blank=True)
    billing_country = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    billing_postal_code = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    billing_state = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    defferent_delivery_address = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_name = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_phone = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_address_line1 = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_address_line2 = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_country = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_city = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_postal_code = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_state = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)
    delivery_slot = models.CharField(
        max_length=100, choices=CHOICE, null=True, blank=True)

    time_slot = models.BooleanField(default=False, null=True, blank=True)
    time_slot_label = models.CharField(max_length=100, null=True, blank=True)
    customer_instruction = models.CharField(max_length=100, null=True, blank=True)
    new_time_slot = models.CharField(max_length=100, null=True, blank=True)

    terms_and_condition_show_OR_hidden = models.BooleanField(default=False, null=True, blank=True)
    terms_and_condition = models.CharField(max_length=100, choices=CHOICE, null=True, blank=True)
    terms_and_condition_label = models.CharField(max_length=100, null=True, blank=True)
    terms_and_condition_link = models.URLField(max_length=300, null=True, blank=True)
    terms_and_condition_show_OR_hidden2 = models.BooleanField(default=False, null=True, blank=True)
    terms_and_condition2 = models.CharField(max_length=100, choices=CHOICE, null=True, blank=True)
    terms_and_condition_label2 = models.CharField(max_length=100, null=True, blank=True)
    terms_and_condition_link2 = models.URLField(max_length=300, null=True, blank=True)

    minimum_checkout_amount_setting = models.BooleanField(default=False, null=True, blank=True)
    minimum_checkout_amount = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)

class FreeShippingMethod(models.Model):
    id = models.AutoField(primary_key=True)
    WEIGHT_CHOICES = (
        ('ANY', 'Any'),
        ('LESS_THAN', 'Less than'),
    )
    AMOUNT_CHOICES = (
        ('ANY', 'Any'),
        ('GREATER_THAN', 'Greater than'),
    )
    amount_mesurement = models.CharField(
        max_length=100, choices=AMOUNT_CHOICES, default='ANY')
    amount = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    weight_mesurement = models.CharField(
        max_length=100, choices=WEIGHT_CHOICES, default='ANY')
    weight = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    free_shipping = models.BooleanField(default=False)
    instruction = models.CharField(max_length=300, null=True, blank=True)

    def __str__(self):
        return self.free_shipping

class StorePickupShippingMethod(models.Model):
    id = models.AutoField(primary_key=True)
    store_pickup = models.BooleanField(default=False)
    instruction = models.CharField(max_length=300, null=True, blank=True)
    def __str__(self):
        return self.store_pickup


class StandardShippingMethod(models.Model):
    id = models.AutoField(primary_key=True)
    standard_shipping = models.BooleanField(default=False)
    instruction = models.CharField(max_length=300, null=True, blank=True)
    name = models.CharField(max_length=100, null=True, blank=True) ### Name stores Country Name
    def __str__(self):
        return self.instruction

class DeliveryArea(models.Model):
    id = models.AutoField(primary_key=True)
    country = models.CharField(max_length=100, null=True, blank=True)
    shipping_method = models.ForeignKey(
        StandardShippingMethod,
        on_delete=models.CASCADE,
        related_name='rates',
        null=True,
        blank=True
        )
    shipping_rate_name = models.CharField(
        max_length=100, null=True, blank=True)
    weight_lower_limit = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    weight_upper_limit = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    price = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)

class RegeionalDetails(models.Model):
    id = models.AutoField(primary_key=True)
    delivery_area = models.ForeignKey(
        DeliveryArea,
        on_delete=models.CASCADE,
        related_name='regional_details',
        null=True,
        blank=True
    )
    region_name = models.CharField(max_length=100, null=True, blank=True)
    region_price = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return str(self.region_name)

class TaxRate(models.Model):
    name = models.CharField(max_length=100, blank=True, null=True)
    tax = models.DecimalField(
        decimal_places=2,
        max_digits=5,
        null=True,
        blank=True
    )
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.name


##### new tables for user permission


class Role(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, null=True, blank=True)
    pos_manager = models.BooleanField(default=False)
    pos_cashier = models.BooleanField(default=False)
    ecommerce_staff = models.BooleanField(default=False)

    def __str__(self):
        return self.name


class Resource(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    selected = models.BooleanField(default=False)

    def __str__(self):
        return self.name


class Operation(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, null=True, blank=True)
    display_text = models.CharField(max_length=150, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    resource = models.ForeignKey(
        Resource,
        on_delete=models.CASCADE,
        related_name='operation',
        null=True,
        blank=True
    )
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class PermissionRole(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='permission_role_user',
        null=True,
        blank=True
    )
    role = models.ForeignKey(
        Role,
        on_delete=models.CASCADE,
        related_name='permission_role',
        null=True,
        blank=True
    )
    operation = models.ForeignKey(
        Operation,
        on_delete=models.CASCADE,
        related_name='permission_role_operation',
        null=True,
        blank=True
    )
    name = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return str(self.id)


class CustomUser(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='custom_user',
        null=True,
        blank=True
    )
    confirmation_sent_at = models.DateTimeField(auto_now_add=True)
    confirmed_at = models.DateTimeField(null=True, blank=True, default=None)
    confirmation = models.BooleanField(default=False)
    contact = models.CharField(max_length=20, null=True, blank=True)
    email = models.EmailField(max_length=40, null=True, blank=True)
    full_name = models.CharField(max_length=100, null=True, blank=True)
    password = models.CharField(max_length=100, null=True, blank=True)
    is_all_outlet = models.BooleanField(default=False)
    outlet = models.ManyToManyField(
        'pos_api.Outlet',
        related_name='custom_user_outlet',
        blank=True
    )
    operations = models.ManyToManyField(
        Operation,
        related_name='custom_user_operation',
        blank=True
    )
    # permissions = models.ManyToManyField(
    #     PermissionRole,
    #     related_name='custom_user_permissions',
    #     blank=True
    # )
    roles = models.ManyToManyField(
        Role,
        related_name='custom_user_roles',
        blank=True
    )

    selected = models.BooleanField(default=False)

    def __str__(self):
        return str(self.id)

class PaymentMethod(models.Model):
    id = models.AutoField(primary_key=True)
    description = models.TextField(null=True, blank=True)
    cash_on = models.BooleanField(default=False)

    def __str__(self):
        return str(self.id)