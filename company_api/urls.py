from django.urls import path

from .import views

urlpatterns = [
    path('meta/', views.MetaPropertyAPI.as_view(), name="meta-setting"),
]
