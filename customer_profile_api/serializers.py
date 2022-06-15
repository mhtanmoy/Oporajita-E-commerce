from rest_framework import serializers
from rest_framework import status
from rest_framework.response import Response

from .models import *
# from django.contrib.auth.models import User


class CustomerProfileSerializer(serializers.ModelSerializer):
    # user_info = UserInfoSerializer(source='user', read_only=True)


    class Meta:
        model = CustomerProfile
        exclude = ('user', 'username','password')
        read_only_fields = ('id','created','updated')
        


class CustomerProfileUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomerProfile
        fields = '__all__'
        read_only_fields = (
            'id',
            'user',
            'created',
            'updated',
        )


class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        fields = '__all__'
        read_only_fields = ('id', 'created', 'updated',)


class AddressUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        fields = '__all__'
        read_only_fields = (
            'id',
            'user',
            'created',
            'updated',
        )


class CustomerGroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomerGroup
        fields = (
            'id',
            'group_name',
            'total_customers',
            )
        read_only_fields = ('id', 'created','updated',)

class CustomerGroupUpdateSerializer(serializers.ModelSerializer):
    customer = serializers.PrimaryKeyRelatedField(queryset=CustomerProfile.objects.all(), many=True, allow_null=True, required=False)
    customer_details = CustomerProfileSerializer(source='customer', many=True, read_only=True)
    class Meta:
        model = CustomerGroup
        fields = (
            'id',
            'group_name',
            'customer',
            'total_customers',
            'customer_details',
            )
        read_only_fields = ('id', 'created', 'updated', 'customer_details',)
