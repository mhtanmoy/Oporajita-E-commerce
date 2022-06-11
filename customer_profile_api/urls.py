from django.urls import path

from customer_profile_api import views

urlpatterns = [
    path('customer-profile-list/', views.CustomerList.as_view(), name='customer-list'),
    path('customer-profile-create/', views.CustomerProfileCreate.as_view(), name='customer-profile-create'),
    path('customer-profile-details/<int:user>/', views.CustomerProfileDetails.as_view(), name='customer-profile-details'),
    path('customer-address-create/<int:customer>/', views.AddressCreate.as_view(), name='customer-address-create'),
    path('customer-shipping-address-details/<int:customer>/', views.ShippingAddressDetails.as_view(), name='customer-address-details'),
    path('customer-billing-address-details/<int:customer>/', views.BillingAddressDetails.as_view(), name='customer-address-details'),
    path('customer-group-list/', views.CustomerGroupList.as_view(), name='customer-group-list'),
    path('customer-group-details/<int:pk>/', views.CustomerGroupDetails.as_view(), name='customer-group-details'),
]
