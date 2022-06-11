from django.contrib import admin
from .models import Brand, Supplier, ProductCategory, ProductSizeVariant, Product, Inventory_location, Inventory_transfer, ProductPurchased, ProductPurchasedItem, ProductPurchasedPayment
# Register your models here.
admin.site.register(Brand)
admin.site.register(Supplier)
# admin.site.register(Departments)
admin.site.register(ProductCategory)
# admin.site.register(ProductSubCategory)
# admin.site.register(ProductMiniCategory)
# admin.site.register(ProductWarranty)



admin.site.register(ProductSizeVariant)

# admin.site.register(ProductVariant)
admin.site.register(Product)
# admin.site.register(ProductImages)
admin.site.register(Inventory_location)
admin.site.register(Inventory_transfer)
admin.site.register(ProductPurchased)
admin.site.register(ProductPurchasedItem)
admin.site.register(ProductPurchasedPayment)
# admin.site.register(ProductReview)
# admin.site.register(Discount)
# admin.site.register(Comment)
