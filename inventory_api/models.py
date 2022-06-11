from datetime import date
from http.client import PAYMENT_REQUIRED
from typing import Sized

# from customer.models import CustomerProfile
# from delivery_module_api.models import *
from django.conf import settings
from django.contrib.postgres.indexes import GinIndex
from django.utils.text import slugify
# for searche engine
# from django.contrib.postgres.search import SearchVectorField
from django.core.validators import MinValueValidator, MaxValueValidator
# from django.db.models import Count, Avg
# from django.db.models.fields import CharField
from django.forms import ModelForm
from django.utils.text import slugify
from django.utils.crypto import get_random_string
from stdimage import StdImageField
import string
import random

from customer_profile_api.models import CustomerProfile

# from vendor_profile_api.models import Vendor
from .custom_model_managers import *
# from settings_api.models import TaxRate
User = settings.AUTH_USER_MODEL


def rand_slug():
    return ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(6))
class Supplier(models.Model):
    id = models.AutoField(primary_key=True)
    supplier_name = models.CharField(max_length=50)
    # vendor = models.ForeignKey(Vendor, on_delete=models.CASCADE, related_name='vendor_supplier', null=True, blank=True)
    supplier_company_name = models.CharField(max_length=50)
    is_active = models.BooleanField(default=False)
    supplier_first_name = models.CharField(max_length=50)
    supplier_last_name = models.CharField(max_length=50, null=True, blank=True)
    supplier_phone = models.CharField(max_length=15, null=True, blank=True)
    supplier_address = models.CharField(max_length=120, null=True, blank=True)
    supplier_address2 = models.CharField(max_length=120, null=True, blank=True)
    city = models.CharField(max_length=50, null=True, blank=True)
    country = models.CharField(max_length=100, null=True, blank=True)
    division = models.CharField(max_length=100, null=True, blank=True)
    tax = models.ForeignKey('settings_api.TaxRate', on_delete=models.CASCADE,
                            related_name='supplier_tax_rate', null=True, blank=True)
    # supplier_email = models.EmailField(max_length=50, null=True, blank=True)
    postal_code = models.CharField(max_length=20, null=True, blank=True)
    # slug = models.SlugField(null=True, blank=True, unique=True)
    # selected = models.BooleanField(default=False)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.supplier_name)
        super(Supplier, self).save(*args, **kwargs)

    def __str__(self):
        return self.supplier_name


# product category
class ProductCategory(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=150, default='New Category')
    descriptions = models.TextField(null=True, blank=True)
    slug = models.SlugField(null=True, blank=True, unique=True)
    meta_title = models.CharField(max_length=100, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    meta_keywords = models.CharField(max_length=100, null=True, blank=True)
    icon = models.TextField(
        blank=True,
        null=True,
    )
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    # is_active = models.BooleanField(default=True)
    # priority = models.IntegerField(default=1000)

    class Meta:
        ordering = ['id']

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        super(ProductCategory, self).save(*args, **kwargs)

    def __str__(self):
        return self.name

  
class Brand(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=250)
    description = models.CharField(max_length=200, blank=True, null=True,)
    icon_image = StdImageField(
        upload_to='images/brand_images/',
        blank=True,
        null=True,
        editable=True,
        variations={'thumbnail': (220, 140)}, delete_orphans=True
    )
    icon_image2 = StdImageField(
        upload_to='images/brand_images/',
        blank=True,
        null=True,
        editable=True,
        variations={'thumbnail': (220, 140)}, delete_orphans=True
    )
    slug = models.SlugField(null=True, blank=True, unique=True, max_length=250)
    # is_active = models.BooleanField(default=True)
    meta_title = models.CharField(max_length=100, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    meta_keywords = models.CharField(max_length=100, null=True, blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name+'-'+str(id))
        super(Brand, self).save(*args, **kwargs)

#variant attribute


class ProductSizeVariant(models.Model):
    id = models.AutoField(primary_key=True)
    product = models.ForeignKey(
        'Product',
        on_delete=models.CASCADE,
        related_name='variant',
        null=True, blank=True
    )
    name = models.CharField(max_length=100, blank=True, null=True)
    awaiting_stock = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    stock = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    on_hand = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    committed = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    available = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    option = models.CharField(max_length=50, null=True, blank=True)
    value = models.CharField(max_length=50, null=True, blank=True)
    options = models.CharField(max_length=50, null=True, blank=True)
    sku = models.CharField(max_length=100, blank=True, null=True)
    barcode = models.CharField(max_length=250, blank=True, null=True)
    parent_id = models.IntegerField(blank=True, null=True)
    position = models.CharField(max_length=100, null=True, blank=True)
    on_sale = models.BooleanField(default=False, null=True, blank=True)
    tags = models.CharField(max_length=100, null=True, blank=True)
    advance_price = models.DecimalField(
        decimal_places=2,
        max_digits=10,
        null=True,
        blank=True
    )
    auto_adjust_selling_price = models.DecimalField(
        decimal_places=2,
        max_digits=10,
        null=True,
        blank=True
    )
    cost_price = models.DecimalField(
        max_digits=10,
        decimal_places=2,
        validators=[MinValueValidator(0)],
        null=True,
        blank=True
    )
    compare_at_price = models.DecimalField(
        decimal_places=2,
        max_digits=10,
        null=True,
        blank=True
    )
    #selling price = price
    price = models.DecimalField(
        decimal_places=2,
        max_digits=10,
        null=True,
        blank=True
    )
    is_selected = models.BooleanField(default=False)
    weight = models.DecimalField(
        max_digits=10,
        decimal_places=2,
        blank=True,
        null=True)

    def __str__(self):
        return str(self.option)
    def save(self, *args, **kwargs):
        if self.name == None:
            self.name = self.product.name
        super(ProductSizeVariant, self).save(*args, **kwargs)
class Product(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=250)
    description = models.TextField(blank=True, null=True)
    short_description = models.TextField(blank=True, null=True)
    awaiting_stock = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    stock = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    on_hand = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    committed = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    available = models.IntegerField(
        validators=[MinValueValidator(0)], blank=True, null=True, default=0)
    category = models.ForeignKey(
        ProductCategory,
        on_delete=models.CASCADE,
        related_name='product_category',
        blank=True,
        null=True
    )
    brand = models.ForeignKey(
        Brand,
        on_delete=models.CASCADE,
        related_name='product_brand',
        blank=True,
        null=True
    )
    sku = models.CharField(max_length=100, blank=True, null=True)
    barcode = models.CharField(max_length=250, blank=True, null=True)
    is_active = models.BooleanField(default=True)
    is_display = models.BooleanField(default=True)
    is_expanded = models.BooleanField(default=False)
    is_selected = models.BooleanField(default=False)
    option_values = models.CharField(max_length=50, null=True, blank=True)
    options = models.CharField(max_length=50, null=True, blank=True)
    enable_customer_note = models.BooleanField(default=False)
    is_featured = models.BooleanField(default=True)
    is_new = models.BooleanField(default=False)
    store_only = models.BooleanField(default=False)
    stock_control = models.BooleanField(default=True)
    is_require_documents = models.BooleanField(default=False)
    featured_image = StdImageField(
        upload_to='images/product_images/',
        blank=True,
        null=True,
        editable=True,
        variations={'thumbnail': (220, 140)}, delete_orphans=True
    )
    product_image1 = StdImageField(
        upload_to='images/product_images/',
        blank=True,
        null=True,
        editable=True,
        variations={'thumbnail': (220, 140)}, delete_orphans=True
    )
    product_image2 = StdImageField(
        upload_to='images/product_images/',
        blank=True,
        null=True,
        editable=True,
        variations={'thumbnail': (220, 140)}, delete_orphans=True
    )
    product_image3 = StdImageField(
        upload_to='images/product_images/',
        blank=True,
        null=True,
        editable=True,
        variations={'thumbnail': (220, 140)}, delete_orphans=True
    )
    advance_price = models.DecimalField(
        max_digits=10,
        decimal_places=2,
        validators=[MinValueValidator(0)],
        null=True,
        blank=True
    )
    auto_adjust_selling_price = models.DecimalField(
        decimal_places=2,
        max_digits=10,
        null=True,
        blank=True
    )
    #selling price = price
    price = models.DecimalField(
        decimal_places=2,
        max_digits=10,
        null=True,
        blank=True
    )
    tax = models.ForeignKey('settings_api.TaxRate', on_delete=models.CASCADE,
                            related_name='product_tax_rate', null=True, blank=True)
    weight = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    unit = models.IntegerField(validators=[MinValueValidator(0)], blank=True, null=True)
    on_sale = models.BooleanField(default=False, blank=True, null=True)
    tags = models.CharField(max_length=100, null=True, blank=True)
    call_for_price = models.BooleanField(default=False)
    attribute = models.CharField(max_length=50, null=True, blank=True)
    attribute2 = models.CharField(max_length=50, null=True, blank=True)
    attribute3 = models.CharField(max_length=50, null=True, blank=True)
    attribute4 = models.CharField(max_length=50, null=True, blank=True)
    attribute5 = models.CharField(max_length=50, null=True, blank=True)
    attribute6 = models.CharField(max_length=50, null=True, blank=True)
    delivery_info = models.TextField(blank=True, null=True)
    meta_title = models.CharField(max_length=100, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    meta_keywords = models.CharField(max_length=100, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    slug = models.SlugField(null=True, blank=True, unique=True, max_length=250)
    value = models.CharField(max_length=50, null=True, blank=True)
    # variant = models.ManyToManyField(ProductSizeVariant, blank=True, related_name='product_variant')

    # for functioning search engine
    # search_vector = SearchVectorField(null=True, blank=True)

    # objects = ProductManager()

    # priority = models.IntegerField(default=100)
    class Meta:
        ordering = ['id']

    def save(self, *args, **kwargs):
        self.slug = slugify(rand_slug() + "-" + self.name)
        # if self.sub_category is None:
        #     self.sub_category_id = self.mini_category.sub_category_id
        # if self.category is None:
        #     self.category_id = None

        # self.search_vector = (
        #     SearchVector('name', weight='A')
        #     + SearchVector('alternative_names', weight='A')
        #     + SearchVector('code', weight='A')
        #     # + SearchVector('category__name', weight='C')
        #     # + SearchVector('sub_category__name', weight='D')
        # )

        super(Product, self).save(*args, **kwargs)

    # class Meta:
    #     indexes = [
    #         GinIndex(fields=['search_vector']),
    #     ]

    def __str__(self):
        return self.name

    # @property
    # def commited(self):
    #     if self.is_active:
    #         return self.unit
    #     else:
    #         return 0

    # @property
    # def onhand(self):
    #     if self.is_active:
    #         return self.unit
    #     else:
    #         return 0
    

    # @property
    # def averagereview(self):
    #     reviews = Comment.objects.filter(product=self, status='Active').aggregate(avarage=Avg('rating'))
    #     avg = 0
    #     if reviews["avarage"] is not None:
    #         avg = float(reviews["avarage"])
    #     return avg

    # @property
    # def countreview(self):
    #     reviews = Comment.objects.filter(product=self, status='Active').aggregate(count=Count('id'))
    #     cnt = 0
    #     if reviews["count"] is not None:
    #         cnt = int(reviews["count"])
    #     return cnt

    



class Inventory_location(models.Model):
    id = models.AutoField(primary_key=True)
    location_name = models.CharField(max_length=150)
    phone = models.CharField(max_length=15, null=True, blank=True)
    is_active = models.BooleanField(default=True)
    is_default = models.BooleanField(default=True)
    address1 = models.CharField(max_length=120, null=True, blank=True)
    address2 = models.CharField(max_length=120, null=True, blank=True)
    country = models.CharField(max_length=100, null=True, blank=True)
    division = models.CharField(max_length=100, null=True, blank=True)
    city = models.CharField(max_length=50, null=True, blank=True)
    postal_code = models.CharField(max_length=50, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)


    def __str__(self):
        return self.location_name
class Inventory_transfer(models.Model):
    STATUS = (
        ('OPEN', 'Open'),
        ('SENT', 'Sent'),
        ('PARTIALLY_RECEIVED', 'Partially Received'),
        ('RECEIVED', 'Received'),
    )
    id = models.AutoField(primary_key=True)
    TO_number = models.CharField(
        max_length=50,
        blank=True,
        editable=False,
        unique=True,
    )

    from_inventory = models.ForeignKey(
        Inventory_location,
        related_name='from_inventory',
        on_delete=models.CASCADE
    )
    to_inventory = models.ForeignKey(
        Inventory_location,
        related_name='to_inventory',
        on_delete=models.CASCADE
    )
    status = models.CharField(max_length=20, choices=STATUS, default='OPEN')
    total_transfer = models.IntegerField(null=True, blank=True)
    total_receive = models.IntegerField(null=True, blank=True)
    due_date = models.DateField(null=True, blank=True)
    transfer_item = models.ManyToManyField(
        ProductSizeVariant,
        related_name='transfer_item',
        blank=True,
        null=True
    )
    transfer_quantity = models.IntegerField(null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    def save(self, *args, **kwargs):
        self.Reference_Number = "TO-"+get_random_string(7).lower()
        super(Inventory_transfer, self).save(*args, **kwargs)

    def __str__(self):
        return self.TO_number
    

# product Purchased
class ProductPurchased(models.Model):
    STATUS_CHOICES = (
        ('DRAFT', 'Draft'),
        ('OPEN', 'Open'),
        ('RECEIVED', 'Received'),
        ('PARTIALLY_RECEIVED', 'Partially Received'),
        ('CLOSED', 'Closed'),
    )
    id = models.AutoField(primary_key=True)
    adjusment = models.IntegerField(null=True, blank=True, default=0)
    due_date = models.DateField()
    po_number = models.CharField(max_length=50, null=True, blank=True)
    purchase_date = models.DateField()
    received_note =models.TextField(null=True, blank=True)
    received_quantity_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    reference = models.CharField(max_length=500, null=True, blank=True)
    supplier = models.ForeignKey(
        Supplier,
        on_delete=models.SET_NULL,
        related_name='product_purchased_supplier',
        null=True,
        blank=True
    )
    total_amount = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    total_due = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    total_payment = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    total_tax = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    # def save(self, *args, **kwargs):
    #     self.slug = slugify(self.batch_code + self.product.code, self.supplier.supplier_name)
    #     self.selling_price = self.product.price
    #     super(ProductPurchased, self).save(*args, **kwargs)

    def __str__(self):
        return self.po_number

class ProductPurchasedItem(models.Model):
    id = models.AutoField(primary_key=True)
    purchased_product = models.ForeignKey(
        Product,
        on_delete=models.CASCADE,
        related_name='product_purchased',
        null=True,
        blank=True
    )
    purchased_size = models.ForeignKey(
        ProductSizeVariant,
        on_delete=models.CASCADE,
        related_name='product_purchased_item_variant',
        null=True,
        blank=True
    )
    purchase_item = models.ForeignKey(
        ProductPurchased,
        on_delete=models.CASCADE,
        related_name='product_purchased_item',
        null=True,
        blank=True
    )
    inventory_location = models.ForeignKey(
        Inventory_location,
        on_delete=models.CASCADE,
        related_name='product_purchased_item_inventory_location',
        null=True,
        blank=True
    )
    order_quantity = models.IntegerField(null=True, blank=True)
    received_quantity = models.IntegerField(null=True, blank=True)
    sku = models.CharField(max_length=50, null=True, blank=True)
    subtotal = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    tax = models.ForeignKey(
        'settings_api.TaxRate',
        on_delete=models.SET_NULL,
        related_name='product_purchased_item_tax',
        null=True,
        blank=True
    )
    total_received_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    total_tax = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    unit_price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)

    # def save(self, *args, **kwargs):
    #     self.total_received_price = self.received_quantity * self.unit_price

        # super(ProductPurchasedItem, self).save(*args, **kwargs)
    def __str__(self):
        return self.sku
class ProductPurchasedPayment(models.Model):
    id = models.AutoField(primary_key=True)
    PAYMENT_METHOD_CHOICES = (
        ('CASH', 'Cash'),
        ('CHEQUE', 'Cheque'),
        ('BANK_TRANSFER', 'Bank Transfer'),
        ('MOBILE_TRANSFER', 'Mobile Transfer'),
    )
    purchased = models.ForeignKey(
        ProductPurchased,
        on_delete=models.CASCADE,
        related_name='product_purchased_payment',
        null=True,
        blank=True
    )
    amount = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    payment_date = models.DateField(null=True, blank=True)
    payment_method = models.CharField(max_length=50, choices=PAYMENT_METHOD_CHOICES, null=True, blank=True)
    reference = models.CharField(max_length=500, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.reference

#Customer Message
class CustomerMessage(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.ForeignKey(
        CustomerProfile,
        on_delete=models.CASCADE,
        related_name='customer_message',
        null=True,
        blank=True
    )
    email = models.EmailField(max_length=100, null=True, blank=True)
    phone = models.CharField(max_length=15, null=True, blank=True)
    subject = models.CharField(max_length=200, null=True, blank=True)
    message = models.TextField(max_length=1000,null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


# Product Review
# class ProductReview(models.Model):
#     id = models.AutoField(primary_key=True)

#     product = models.ForeignKey(
#         Product,
#         on_delete=models.CASCADE
#     )
#     customer = models.ForeignKey(User, on_delete=models.SET('Unknown'))
#     review = models.CharField(max_length=150)
#     is_active = models.CharField(max_length=150)
#     rating = models.IntegerField(
#         validators=[MinValueValidator(0), MaxValueValidator(5)]
#     )
#     created = models.DateTimeField(auto_now_add=True)
#     updated = models.DateTimeField(auto_now=True)

#     slug = models.SlugField(null=True, blank=True, unique=True)

#     def save(self, *args, **kwargs):
#         self.slug = slugify(self.product.name + str(self.created))
#         super(ProductReview, self).save(*args, **kwargs)

#     class Meta:
#         ordering = ('created',)


# class Comment(models.Model):
#     id = models.AutoField(primary_key=True)
#     STATUS = (
#         ('New', 'New'),
#         ('Active', 'Active'),
#         ('Blocked', 'Blocked'),
#     )
#     product = models.ForeignKey(Product, on_delete=models.CASCADE)
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#     subject = models.CharField(max_length=150, blank=True, null=True)
#     name = models.CharField(max_length=50, blank=True, null=True)
#     comment = models.CharField(max_length=250, blank=True, null=True)
#     rating = models.IntegerField(default=1, null=True)
#     ip = models.CharField(max_length=20, blank=True, null=True)
#     status = models.CharField(max_length=10, choices=STATUS, default='Active')
#     created = models.DateTimeField(auto_now_add=True)
#     updated = models.DateTimeField(auto_now=True)

#     def __str__(self):
#         return self.subject

    # def save(self, *args, **kwargs):
    #     self.slug = slugify(self.product.name + '-' + str(self.subject))
    #     super(Comment, self).save(*args, **kwargs)





# class CommentForm(ModelForm):
#     class Meta:
#         model = Comment
#         fields = ['name', 'subject', 'comment', 'rating']

