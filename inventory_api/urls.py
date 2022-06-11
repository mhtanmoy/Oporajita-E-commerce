from django.contrib import admin
from django.urls import path

from inventory_api import views

urlpatterns = [
    path('dashboard/', views.DashboardView.as_view(), name='DashboardView'),
    path('product-categories/', views.ProductCategoryList.as_view(),
         name="product-categories"),
    # path('departments/', views.DepartmentList.as_view(), name="department_list"),
    # path('department-details/<pk>/', views.DepartmentDetail.as_view(), name="department_details"),
    path('products/', views.ProductList.as_view(), name='product'),
    path('product-create/', views.ProductCreate.as_view(), name='product-create'),
    path('product-details/<pk>/',
         views.ProductDetail.as_view(), name='product-details'),
    path('product-category-details/<pk>/',
         views.ProductCategoryDetail.as_view(), name='product-category-details'),

    path('brands/', views.BrandList.as_view(), name='product-brands'),
    path('brand-details/<pk>/', views.BrandDetail.as_view(),
         name='product-brand-details'),
    path('product-size/<int:product_id>/',
         views.ProductSizeVariatList.as_view(), name='product-size'),
    path('product-size-details/<pk>/', views.ProductSizeVariantDetail.as_view(),
         name='product-size-details'),
    path('product-inventory/', views.ProductInventoryListDetail.as_view(), name='product-inventory'),
    # path('product-minicategories/', views.ProductMiniCategoryList.as_view(), name='product-minicategories'),
    # path('product-minicategory-details/<pk>/', views.ProductMiniCategoryDetail.as_view(), name='product-minicategory-details'),

    path('inventory-locations/', views.InventoryLocationList.as_view(),
         name='inventory-locations'),
    path('update-inventory-location/<int:pk>/',
         views.InventoryLocationDetail.as_view(), name='update-inventory-location'),
    path('inventory-transfers/', views.InventoryTransferList.as_view(),
         name='inventory-transfers'),
    path('update-inventory-transfers/<int:pk>/',
         views.InventoryTransferDetail.as_view(), name='update-inventory-transfer'),
    path('bulk-inventory-entry/', views.BulkInventoryEntryUpdate.as_view(), name='bulk-inventory-entry-list'),
    path('bulk-product-update/', views.BulkUpdateProductList.as_view(),
         name='bulk-product-update-list'),
    # path('product-warranty/', views.ProductWarrantyList.as_view(), name='product-warranty'),
    # path('update-warranty/<int:pk>/', views.ProductWarrantyUpdate.as_view(), name='update-warranty'),



    path('suppliers/', views.SupplierList.as_view(), name="supplier_list"),
    path('supplier-details/<pk>/',
         views.SupplierDetail.as_view(), name="supplier_details"),

    path('purchase-list/', views.PurchaseListCreateView.as_view()),
    path('purchase-details/<int:pk>/',
         views.PurchaseDetailView.as_view()), 


#     path('search-all-product/', views.search_all_product,
#          name='search_all_product'),
#     path('filter-categorized-product/<slug:slug>/',
#          views.filter_categorized_product, name='search_categorized_product'),

#     path('addcomment/<int:id>/', views.addcomment, name='addcomment'),

]
