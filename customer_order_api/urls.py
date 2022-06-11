from unicodedata import name
from django.urls import path
from . import views

urlpatterns = [
    path('', views.OrderList.as_view()),
    path('update/<int:id>/', views.OrderDetail.as_view()),
    path('create/', views.OrderCreate.as_view()),
    path('order-filter/',
         views.OrderListFilter.as_view(), name='OrderListFilter'),

     ##### SMS
    path('adn-sms/check-balance/', views.CheckBalance.as_view(), name='check_balance'),
    path('adn-sms/send-multi-sms/',
         views.SendMultipleSMS.as_view(), name='SendMultipleSMS'),
    path('adn-sms/send-single-sms/',
         views.SendSingleSMS.as_view(), name='SendSingleSMS'),
     

     ##### Pathao
     path('pathao/token/',
          views.GetToken.as_view(), name='GetToken'),
     path('pathao/order/',
          views.CreatePathaoOrder.as_view(), name='CreatePathaoOrder'),
     path('pathao/store/',
          views.StoreView.as_view(), name='StoreView'),
     path('pathao/city/',
          views.CityList.as_view(), name='CityList'),
     path('pathao/zone/',
          views.ZoneList.as_view(), name='ZoneList'),
     path('pathao/area/',
          views.AreaList.as_view(), name='AreaList'),
     path('pathao/price-calculation/',
          views.PriceCalculation.as_view(), name='PriceCalculation'),
    
      # path('shop-orders/', views.ShopOrderList.as_view()),
    # path('active-order/', views.ActiveOrders.as_view()),
    # path('previous-completed-order/', views.PreviousOrder.as_view()),
]
