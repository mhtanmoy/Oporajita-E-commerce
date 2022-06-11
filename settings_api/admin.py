from django.contrib import admin

from settings_api.models import TaxRate

# Register your models here.
from .models import CheckoutSetting, FreeShippingMethod, StorePickupShippingMethod, StandardShippingMethod, TaxRate, GeneralSetting, DeliveryArea, CheckoutFieldSettings
admin.site.register(TaxRate)
admin.site.register(GeneralSetting)
admin.site.register(CheckoutSetting)
admin.site.register(CheckoutFieldSettings)
admin.site.register(FreeShippingMethod)
admin.site.register(StorePickupShippingMethod,)
admin.site.register(StandardShippingMethod)
admin.site.register(DeliveryArea)
