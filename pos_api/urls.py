from django.urls import path

from .import views

urlpatterns = [

    path('outlets/', views.OutletList.as_view(), name="outlet_list"),
    path('outlet-details/<pk>/', views.OutletDetail.as_view(), name="outlet_details"),
    path('registers/update/<int:pk>/', views.CloseRegisterList.as_view(), name="register_update_list"),
    path('registers/', views.RegisterList.as_view(), name="close_reg"),
    path('register-details/<pk>/', views.RegisterDetail.as_view(), name="outlet_details"),
    
    path('', views.PosOrderList.as_view()),
    path('create/', views.PosOrderCreate.as_view()),
    path('update/<int:id>/', views.POSOrderDetail.as_view()),
    path('refund/<int:pk>/', views.RefundOrderList.as_view(), name="refund_list"),
]
