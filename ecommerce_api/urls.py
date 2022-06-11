from django.urls import path

from .import views

urlpatterns = [
    path('product-list/', views.ProductList.as_view(), name='product'),
    path('product-detail/<pk>/', views.ProductDetail.as_view(), name='product-details'),
    path('order-create/', views.OrderCreate.as_view(), name='order-create'),
    path('pop-up/', views.PopupAPI.as_view(), name='PopupAPI'),
    path('news/', views.NewsAPI.as_view(), name='NewsAPI'),
    path('meta-info/', views.MetaPropertyAPI.as_view(), name='MetaPropertyAPI'),
]
