from django.contrib import admin
from .models import CustomerProfile, Address, CustomerGroup
# Register your models here.


@admin.register(Address)
class Address(admin.ModelAdmin):
    list_display = ['customer']


@admin.register(CustomerProfile)
class CustomerProfile(admin.ModelAdmin):
    list_display = ['user', 'phone']


@admin.register(CustomerGroup)
class CustomerGroupAdmin(admin.ModelAdmin):
    list_display = ('id', 'group_name', 'total_customers')
    # list_filter = ('created',)
