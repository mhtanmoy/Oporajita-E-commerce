from django.urls import path
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
    TokenVerifyView,
)
from . import views
urlpatterns = [
    path('register/', views.RegisterView.as_view(), name="RegisterView"),
    path('', views.UserView.as_view(), name="UserView"),
    path('login/', views.LoginView.as_view(), name="LoginView"),
    path('logout/', views.LogoutView.as_view(), name="LogoutView"),
    path('user-info-update/<pk>/', views.UserInfoUpdateView.as_view(), name="UserInfoUpdateView"),
    path('change-password/<pk>/',
         views.ChangePasswordView.as_view(), name="ChangePasswordView"),

    ####################   Simple JWT   ############################
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('token/verify/', TokenVerifyView.as_view(), name='token_verify'),
]
