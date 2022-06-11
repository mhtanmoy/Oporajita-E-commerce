from django.urls import path

from .import views

urlpatterns = [

    path('external/live-chat', views.LiveChatAPI.as_view(), name="external-application"),
    path('external/google-analytic/', views.GoogleAnalyticAPI.as_view(), name="external-application"),
    path('external/google-ads/', views.GoogleADAPI.as_view(), name="external-application"),
    path('external/fb-pixel/', views.FacebookPixelAPI.as_view(), name="external-application"),
    path('external/order-placed-fb-pixel/', views.OrderPlacedFacebookPixelAPI.as_view(), name="external-application"),
    path('popup/', views.PopupAPI.as_view(), name="popup"),
    path('news/', views.NewsAPI.as_view(), name="news"),
    path('promocodes/', views.PromoCodeList.as_view()),
    path('promocode/<int:pk>/', views.PromoCodeDetail.as_view()),
    path('promocode/<str:code>/', views.PromoCodeData.as_view()),
]
