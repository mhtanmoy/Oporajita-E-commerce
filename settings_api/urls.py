from django.urls import path

from .import views

urlpatterns = [

    path('general/', views.GeneralSettingAPI.as_view(), name="general-setting"),
    path('edit_checkout_settings/',
         views.CheckoutSettingAPI.as_view(), name="checkout-setting"),
    path('edit_checkout_field_settings/',
         views.CheckouFieldtSettingAPI.as_view(), name="checkout-field-setting"),
    path('free_shipping/', views.FreeShippingMethodAPI.as_view(),
         name="free-shipping"),
    path('store_pickup_shipping/', views.StorePickupShippingMethodAPI.as_view(),
         name="store-pickup-shipping"),
    path('standard_shipping/', views.StandardShippingMethodAPI.as_view(),
         name="standard-shipping"),
    path('delivery_area/', views.DeliveryAreaAPI.as_view(), name="delivery-area"),
    path('edit_delivery_area/<int:pk>/', views.DeliveryAreaDetailAPI.as_view(), name="edit-delivery-area"),
    path('tax-rates/', views.TaxRateList.as_view(), name="tax-rate-list"),
    path('tax-rate-details/<pk>/', views.TaxRateDetail.as_view(),
         name="tax-rate-details"),
]
