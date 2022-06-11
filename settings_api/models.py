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
    area1_name = models.CharField(max_length=100, null=True, blank=True)
    area1_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area2_name = models.CharField(max_length=100, null=True, blank=True)
    area2_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area3_name = models.CharField(max_length=100, null=True, blank=True)
    area3_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area4_name = models.CharField(max_length=100, null=True, blank=True)
    area4_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area5_name = models.CharField(max_length=100, null=True, blank=True)
    area5_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area6_name = models.CharField(max_length=100, null=True, blank=True)
    area6_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area7_name = models.CharField(max_length=100, null=True, blank=True)
    area7_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area8_name = models.CharField(max_length=100, null=True, blank=True)
    area8_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area9_name = models.CharField(max_length=100, null=True, blank=True)
    area9_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area10_name = models.CharField(max_length=100, null=True, blank=True)
    area10_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area11_name = models.CharField(max_length=100, null=True, blank=True)
    area11_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area12_name = models.CharField(max_length=100, null=True, blank=True)
    area12_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area13_name = models.CharField(max_length=100, null=True, blank=True)
    area13_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area14_name = models.CharField(max_length=100, null=True, blank=True)
    area14_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    area15_name = models.CharField(max_length=100, null=True, blank=True)
    area15_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return str(self.id)

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
    
# class CustomUser(models.Model):
#     role_choices = (
#         ('Ecommerce_Staff', 'Ecommerce Staff'),
#         ('POS_Cashier', 'Pos Cashier'),
#         ('POS_Manager', 'Pos Manager'),
#     )
#     id = models.AutoField(primary_key=True)
#     user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
#     phone = models.CharField(max_length=100, null=True, blank=True)
#     role = models.CharField(max_length=100, choices=role_choices, null=True, blank=True)
    

#     ################# Ecommerce Staff #####################
#     #dashboard
#     all_dashboard_section = models.BooleanField(default=False, null=True, blank=True)
#     dashboard = models.BooleanField(default=False, null=True, blank=True)
#     #product
#     all_product_section = models.BooleanField(default=False, null=True, blank=True)
#     create_edit_product = models.BooleanField(default=False, null=True, blank=True)
#     delete_product = models.BooleanField(default=False, null=True, blank=True)
#     print_label = models.BooleanField(default=False, null=True, blank=True)
#     #inventory
#     all_inventory_section = models.BooleanField(default=False, null=True, blank=True)
#     update_inventory = models.BooleanField(default=False, null=True, blank=True)
#     purchase_order = models.BooleanField(default=False, null=True, blank=True)
#     inventory_return = models.BooleanField(default=False, null=True, blank=True)
#     supplier = models.BooleanField(default=False, null=True, blank=True)
#     inventory_location = models.BooleanField(default=False, null=True, blank=True)
#     manage_inventory_transfer = models.BooleanField(default=False, null=True, blank=True)
#     #order
#     all_order_section = models.BooleanField(default=False, null=True, blank=True)
#     process_online_order = models.BooleanField(default=False, null=True, blank=True)
#     create_process_manual_order = models.BooleanField(default=False, null=True, blank=True)
#     #setup
#     all_setup_section = models.BooleanField(default=False, null=True, blank=True)
#     manage_payment_method = models.BooleanField(default=False, null=True, blank=True)
#     tax = models.BooleanField(default=False, null=True, blank=True)
#     manage_tax = models.BooleanField(default=False, null=True, blank=True)
#     #app
#     all_app_section = models.BooleanField(default=False, null=True, blank=True)
#     low_stock_alert = models.BooleanField(default=False, null=True, blank=True)
#     email_marketing = models.BooleanField(default=False, null=True, blank=True)
#     other_app = models.BooleanField(default=False, null=True, blank=True)
#     discount = models.BooleanField(default=False, null=True, blank=True)
#     store_popup = models.BooleanField(default=False, null=True, blank=True)
#     product_filter = models.BooleanField(default=False, null=True, blank=True)
#     wishlist = models.BooleanField(default=False, null=True, blank=True)
#     #report
#     all_report_section = models.BooleanField(default=False, null=True, blank=True)
#     sales_report = models.BooleanField(default=False, null=True, blank=True)
#     finance_report = models.BooleanField(default=False, null=True, blank=True)
#     inventory_report = models.BooleanField(default=False, null=True, blank=True)
#     other_report = models.BooleanField(default=False, null=True, blank=True)
#     online_store_report = models.BooleanField(default=False, null=True, blank=True)
#     #customer
#     all_customer_section = models.BooleanField(default=False, null=True, blank=True)
#     manage_customer = models.BooleanField(default=False, null=True, blank=True)

#     ################# POS Cashier #####################
    
#     all_outlet_section = models.BooleanField(default=False, null=True, blank=True)
#     outlet = models.ForeignKey(Outlet, on_delete=models.CASCADE, null=True, blank=True)

#     #sales
#     all_sales_section = models.BooleanField(default=False, null=True, blank=True)
#     create_process_sale = models.BooleanField(default=False, null=True, blank=True)
#     refund_sale = models.BooleanField(default=False, null=True, blank=True)
#     apply_discount = models.BooleanField(default=False, null=True, blank=True)
#     on_account_sale = models.BooleanField(default=False, null=True, blank=True)
#     lay_by_sale = models.BooleanField(default=False, null=True, blank=True)
#     void_sale = models.BooleanField(default=False, null=True, blank=True)


