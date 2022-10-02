from drf_writable_nested.serializers import WritableNestedModelSerializer
from rest_framework import serializers
from customer_order_api.models import Order, RegisterModel

from customer_profile_api.serializers import AddressSerializer

from .models import *
from customer_order_api.serializers import OrderItemSerializer

User = settings.AUTH_USER_MODEL

class OutletSerializer(serializers.ModelSerializer):
    class Meta:
        model = Outlet
        fields = '__all__'
        read_only_fields = ('id', 'created', 'updated')


class RegisterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Register
        fields = '__all__'
        read_only_fields = ('id', 'created','updated')


class RegisterModelSerializer(serializers.ModelSerializer):
    class Meta:
        model = RegisterModel
        fields = '__all__'
        read_only_fields = ('id', 'created','updated')