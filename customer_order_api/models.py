from __future__ import unicode_literals
from os import access
from django.core.files.base import ContentFile
from django.db import models
# from user_profile.models import CustomerProfile, RestaurantOwnerProfile
from django.contrib.auth.models import User
# from vendor_profile_api.models import Vendor
from customer_profile_api.models import CustomerProfile, Address
from inventory_api.models import *
from pos_api.models import Outlet, Register
from app_api.models import PromoCode
from settings_api.models import DeliveryArea

# from promo_code.models import *
# Create your models here.

# Order section table

"""
        ***missing fields***
    customer_document, payment_gateway_discount, pg_charge, shipping_price, total_advance_price, 
"""


class Order(models.Model):
    id = models.AutoField(primary_key=True)
    ORDER_STATUS_CHOICES = (
        ('Received', 'Received'),
        ('Accepted', 'Accepted'),
        ('Shipped', 'Shipped'),
        ('Delivered', 'Delivered'),
        ('Closed', 'Closed'),
        ('Rejected', 'Rejected'),
        ('Cancelled', 'Cancelled'),
        ('PENDING', 'Order is Pending'),
        ('Lay_by', 'Lay by'),
        ('On_Account', 'On Account'),
        ('Completed', 'Completed'),
        ('Refunded', 'Refunded'),
    )
    ORDER_TYPE_CHOICES = (
        ('MANUAL ORDER', 'Manual order'),
        ('CUSTOMER ORDER', 'Customer order'),
        ('OUTLET ORDER', 'Physical order from outlet'),
    )
    CURRENCY_CHOICES = (
        ('BDT', 'BDT(Bangladeshi taka)'),
        ('USD', 'USD(United divisions Dollar)'),
    )
    PAYMENT_METHOD_CHOICES = (
        ('SELECT', 'SELECT'),
        ('BKASH', 'BKASH'),
        ('SSL_COMMERZ_PAYMENT_GATEWAY', 'SSL COMMERZ PAYMENT GATEWAY'),
        ('CASHON_DELIVERY', 'CASHON DELIVERY'),
        ('CARD', 'CARD'),
        ('CASH', 'CASH'),
    )
    PAYMENT_STATUS_CHOICES = (
        ('PENDING', 'Payment is pending'),
        ('PAID', 'Payment received'),
        ('PARTIAL', 'Partial payment received'),
        ('REFUNDED', 'Refunded'),
        ('FAILED', 'Payment Failed'),
    )
    REFERENCE_CHOICES = (
        ('ONLINE-SALE', 'Online Sale'),
        ('IN-STORE-POS-SALE', 'In Store POS Sale'),
    )
    order_id = models.CharField(max_length=100, null=True, blank=True)
    customer = models.ForeignKey(
        CustomerProfile,
        on_delete=models.CASCADE,
        null=True,
        blank=True,
        related_name='customer_order'
    )
    # product = models.ManyToManyField(Product, related_name='product_order', blank=True, null=True)
    is_fulfilled = models.BooleanField(default=False)
    order_type = models.CharField(
        max_length=100, choices=ORDER_TYPE_CHOICES, default='MANUAL ORDER')
    Order_reference = models.CharField(
        max_length=50, choices=REFERENCE_CHOICES, default='ONLINE-SALE')
    status = models.CharField(
        max_length=30,
        choices=ORDER_STATUS_CHOICES
    )
    promo_code = models.ForeignKey(
        PromoCode,
        on_delete=models.CASCADE,
        related_name='promo_orders',
        null=True,
        blank=True
    )

    ordered_by = models.CharField(max_length=20, null=True, blank=True)
    fullname = models.CharField(max_length=200, null=True, blank=True)
    email = models.EmailField(max_length=100, null=True, blank=True)
    phone = models.CharField(max_length=20, null=True, blank=True)
    address = models.TextField(max_length=500, null=True, blank=True)
    order_note = models.TextField(max_length=500, null=True, blank=True)
    delivery_area = models.ForeignKey(
        DeliveryArea, on_delete=models.SET_NULL, null=True, blank=True)
    unit = models.IntegerField(
        validators=[MinValueValidator(1)], blank=True, null=True)
    order_tracking_number = models.IntegerField(blank=True, null=True)
    serial = models.CharField(max_length=40, blank=True, null=True)

    delivery_address = models.ForeignKey(
        Address,
        related_name='shipping_address',
        on_delete=models.SET_NULL,
        blank=True,
        null=True
    )
    separate_delivery_address = models.BooleanField(default=False)

    outlet = models.ForeignKey(
        Outlet,
        on_delete=models.CASCADE,
        related_name='order_outlet',
        null=True,
        blank=True
    )
    supplier = models.ForeignKey(
        Supplier,
        on_delete=models.CASCADE,
        related_name='order_supplier',
        null=True,
        blank=True
    )
    register = models.ForeignKey(
        Register,
        on_delete=models.SET_NULL,
        null=True,
        blank=True
    )
    register_total = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)
    currency = models.CharField(
        max_length=100, choices=CURRENCY_CHOICES, default='BDT')
    has_discount = models.BooleanField(default=False)

    shipping_charge = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)
    other_charges = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)
    other_discount = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)
    promo_discount = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)
    total_tax = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00)
    order_total = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00)
    sub_total = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)
    paid = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)
    total_discount = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, blank=True, null=True)

    # payment = models.ForeignKey(
    #     'PaymentDetails',
    #     on_delete=models.CASCADE,
    #     related_name='order_payment',
    #     null=True,
    #     default=None
    # )
    is_payment_successful = models.BooleanField(default=False)
    accepted_date = models.DateTimeField(null=True, blank=True)
    shipping_start_date = models.DateTimeField(null=True, blank=True)
    completed_date = models.DateTimeField(null=True, blank=True)
    expected_delivery_date = models.DateTimeField(null=True, blank=True)
    is_fulfilled = models.BooleanField(default=False)
    item_count = models.IntegerField(null=True, blank=True)
    product_list = models.TextField(max_length=1000, null=True, blank=True)
    balance = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    description = models.TextField(max_length=1000, null=True, blank=True)
    sales_note = models.TextField(max_length=1000, null=True, blank=True)
    #payment
    payment_method = models.CharField(
        max_length=50, choices=PAYMENT_METHOD_CHOICES, default='SELECT')
    payment_status = models.CharField(
        max_length=10, choices=PAYMENT_STATUS_CHOICES, default='PENDING')
    reference = models.CharField(max_length=500, null=True, blank=True)

    amount = models.DecimalField(
        max_digits=10, decimal_places=2, default=0)
    #end payment
    #pathao info
    # pathao_merchant_order_id = models.CharField(max_length=100, null=True, blank=True)
    pathao_city_id = models.IntegerField(null=True, blank=True)
    pathao_zone_id = models.IntegerField(null=True, blank=True)
    pathao_area_id = models.IntegerField(null=True, blank=True)
    pathao_instruction = models.TextField(max_length=1000, null=True, blank=True)
    pathao_item_description = models.TextField(max_length=200, null=True, blank=True)
    pathao_status = models.BooleanField(default=False, null=True, blank=True)
    #end pathao info
    created = models.DateTimeField(auto_now_add=True)  # purchase_date
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['-created']

    def __str__(self):
        return "%s" % (self.id)

    # if order is active
    @property
    def is_active(self):

        if self.status == "PENDING":
            return True
        elif self.status == "ACCEPTED":
            return True
        elif self.status == "SHIPPING":
            return True
        else:
            return False

    def save(self, *args, **kwargs):
        if self.fullname is None:
            self.fullname = str(self.customer.first_name) + " " + str(self.customer.last_name)
        if self.delivery_area is None:
            self.reference = 'IN-STORE-POS-SALE'
        else:
            self.reference = 'ONLINE-SALE'
        super(Order, self).save(*args, **kwargs)

    # @property
    # def sub_total(self):
    #     return sum([obj.quantity*obj.unit_price for obj in
    #                 OrderItem.objects.filter(order=self.id)])
    @property
    def total_payable(self):
        payable_amount = self.sub_total-self.total_discount+self.total_tax
        return payable_amount

    @property
    def total_paid(self):
        total_paid = 0
        for payment in self.payment_details.all():
            total_paid += payment.amount
        if total_paid == self.order_total:
            self.status = "Closed"
        return total_paid


class OrderItem(models.Model):
    id = models.AutoField(primary_key=True)
    order = models.ForeignKey(
        Order,
        on_delete=models.CASCADE,
        related_name='order_item',
        null=True,
        blank=True
    )
    product = models.ForeignKey(
        Product,
        on_delete=models.CASCADE,
        related_name='ordered_product',
        null=True, blank=True
    )
    size = models.ForeignKey(
        ProductSizeVariant,
        on_delete=models.CASCADE,
        related_name='ordered_size',
        null=True, blank=True
    )
    product_name = models.CharField(max_length=100, null=True, blank=True)
    # product_image = models.ImageField(
    #     upload_to='images/product_images', null=True, blank=True)
    size_name = models.CharField(max_length=100, null=True, blank=True)
    size_value = models.CharField(max_length=100, null=True, blank=True)
    barcode = models.CharField(max_length=200, null=True, blank=True)
    compare_at_price = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00, null=True, blank=True)
    sku = models.CharField(max_length=200, null=True, blank=True)
    quantity = models.IntegerField(default=0, null=True, blank=True)
    fulfilled_quantity = models.IntegerField(default=0, null=True, blank=True)
    stock_control = models.BooleanField(default=True, null=True, blank=True)
    unit_price = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    discount = models.DecimalField(
        max_digits=8, decimal_places=2, null=True, blank=True)
    awaiting_stock = models.IntegerField(
        default=0, null=True, blank=True
    )
        

    @property
    def item_total(self):
        return self.unit_price * self.quantity

    def save(self, *args, **kwargs):
        self.product_name = self.product.name
        self.product_image = self.product.featured_image
        self.size_name = self.size.option
        self.size_value = self.size.value
        self.unit_price = self.product.price
        super(OrderItem, self).save(*args, **kwargs)


class TransferOrder(models.Model):
    id = models.AutoField(primary_key=True)
    TRANSFER_STATUS_CHOICES = (
        ('PENDING', 'Order transfer is Pending'),
        ('ACCEPTED', 'Transfered order has Accepted'),
        ('CANCELED', 'Transfer Canceled'),
    )
    order = models.OneToOneField(
        Order,
        on_delete=models.CASCADE,
        related_name='transfer_order'
    )
    to_number = models.CharField(max_length=100)
    order_from = models.ForeignKey(
        Outlet,
        on_delete=models.CASCADE,
        related_name='ordered_outlates'
    )
    order_to = models.ForeignKey(
        Outlet,
        on_delete=models.CASCADE,
        related_name='transfered_outlates'
    )
    due_date = models.DateTimeField(null=True, blank=True)
    reference = models.CharField(max_length=100, null=True, blank=True)
    transfer_charge = models.DecimalField(
        max_digits=10, decimal_places=2, default=0.00)
    note = models.CharField(max_length=500, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.to_number


class Notification(models.Model):
    id = models.AutoField(primary_key=True)
    user_from = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='notification_from'
    )
    user_to = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='notification_to'
    )
    title = models.CharField(max_length=100)
    description = models.TextField(max_length=500, null=True, blank=True)
    url = models.URLField(max_length=200)
    created = models.DateTimeField(auto_now_add=True)
class PathaoToken(models.Model):
    id = models.AutoField(primary_key=True)
    access_token = models.TextField(max_length=700, null=True, blank=True)
    refresh_token = models.TextField(max_length=700, null=True, blank=True)


class RegisterModel(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=150)
    # outlet = models.ForeignKey(Outlet, on_delete=models.CASCADE, related_name='register_outlet')
    opened_at = models.DateTimeField(blank=True, null=True)
    closed_at = models.DateTimeField(blank=True, null=True)
    # opened_by = models.ForeignKey(CustomerProfile, on_delete=models.CASCADE, related_name='register_opened_by', blank=True, null=True)
    # closed_by = models.ForeignKey(CustomerProfile, on_delete=models.CASCADE, related_name='register_closed_by', blank=True, null=True)
    # cash_management = models.BooleanField(default=True)
    is_active = models.BooleanField(default=True)
    is_deleted = models.BooleanField(default=False)
    status = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    orders = models.ManyToManyField(Order, related_name='register_orders', blank=True, null=True)

    def __str__(self):
        return self.name
