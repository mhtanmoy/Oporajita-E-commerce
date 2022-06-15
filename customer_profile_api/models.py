from __future__ import unicode_literals
from django.conf import settings
from django.db import models
from django.db.models.lookups import Transform

User = settings.AUTH_USER_MODEL

# Create your models here.
from stdimage import StdImageField


class CustomerProfile(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
    email = models.EmailField(max_length=55, unique=True, null=True, blank=True)
    username = models.CharField(max_length=50, unique=True, null=True, blank=True)
    password = models.CharField(max_length=50, null=True, blank=True)
    GENDER_CHOICES = (
        ('MALE', 'Male'),
        ('FEMALE', 'Female'),
        ('OTHERS', 'Others'),
    )
    TITLE_CHOICES = (
        ('Mr.', 'Mr.'),
        ('Mrs.', 'Mrs.'),
        ('Ms.', 'Ms.'),
    )
    title = models.CharField(max_length=10,choices=TITLE_CHOICES, null=True, blank=True)
    first_name = models.CharField(max_length=150, null=True,blank=True)
    last_name = models.CharField(max_length=150, null=True,blank=True)
    company_name = models.CharField(max_length=150, null=True,blank=True)
    designation = models.CharField(max_length=50, null=True, blank=True)
    gender = models.CharField(max_length=10,choices=GENDER_CHOICES, null=True, blank=True)
    phone = models.CharField(max_length=50, null=True, blank=True)
    customer_number = models.CharField(max_length=50, null=True, blank=True)
    birthdate = models.DateField(null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    address = models.TextField(max_length=1000, null=True, blank=True)
    REQUIRED_FIELDS = ['email']

    class Meta:
        ordering = ('-created',)
    
    def save(self, *args, **kwargs):
        if Address.objects.filter(customer=self, type='BILLING').exists():
            address = Address.objects.get(customer=self, type='BILLING')
            self.address = str(address.address1) + ' ' + str(address.address2)
        super(CustomerProfile, self).save(*args, **kwargs)

    @property
    def get_full_name(self):
        """
        Return the first_name plus the last_name, with a space in between.
        """
        full_name = '%s %s' % (self.first_name, self.last_name)
        return full_name.strip()
    
    def __str__(self):
        return str(self.first_name)+" "+str(self.last_name)


class Address(models.Model):
    id = models.AutoField(primary_key=True)
    TITLE_CHOICES = (
        ('Mr.', 'Mr.'),
        ('Mrs.', 'Mrs.'),
        ('Ms.', 'Ms.'),
    )
    customer = models.ForeignKey(CustomerProfile, on_delete=models.CASCADE, related_name='customer_address')
    ADDRESS_CATEGORY_CHOICES = (
        ('BILLING', 'Billing Address'),
        ('SHIPPING', 'Shipping Address'),
    )
    type = models.CharField(max_length=50, choices=ADDRESS_CATEGORY_CHOICES, blank=True, null=True)
    email = models.EmailField(max_length=55, unique=False, null=True, blank=True)
    title = models.CharField(max_length=10,choices=TITLE_CHOICES)
    first_name = models.CharField(max_length=150, null=True,blank=True)
    last_name = models.CharField(max_length=150, null=True,blank=True)
    phone = models.CharField(max_length=50, null=True, blank=True)
    address1 = models.CharField(max_length=200, null=True, blank=True)
    address2 = models.CharField(max_length=200, null=True, blank=True)
    country = models.CharField(max_length=100, null=True, blank=True)
    division = models.CharField(max_length=100, null=True, blank=True)
    district = models.CharField(max_length=100, null=True, blank=True)
    city = models.CharField(max_length=50, null=True, blank=True)
    postal_code = models.CharField(max_length=50, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.customer.user.username


class CustomerGroup(models.Model):
    id = models.AutoField(primary_key=True)
    group_name = models.CharField(max_length=150, null=True,blank=True)
    customer = models.ManyToManyField(CustomerProfile, related_name='customer_group', blank=True)
    created = models.DateTimeField(auto_now_add=True, null=True, blank=True)
    updated = models.DateTimeField(auto_now=True, null=True, blank=True)
    class Meta:
        ordering = ['-created']

    def __str__(self):
        return self.group_name

    @property
    def total_customers(self):
        return self.customer.count()

