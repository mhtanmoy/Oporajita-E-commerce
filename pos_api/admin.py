from django.contrib import admin

# Register your models here.
from .models import Outlet, Register

admin.site.register(Outlet)
admin.site.register(Register)