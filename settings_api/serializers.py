from asyncore import read
from drf_writable_nested.serializers import WritableNestedModelSerializer
from rest_framework import serializers

from .models import *


class GeneralSettingSerializer(serializers.ModelSerializer):
    class Meta:
        model = GeneralSetting
        fields = '__all__'
        read_only_fields = ('id', 'created', 'updated',)


class CheckoutSettingSerializer(serializers.ModelSerializer):
    class Meta:
        model = CheckoutSetting
        fields = '__all__'
        read_only_fields = ('id',)


class CheckouFieldtSettingSerializer(serializers.ModelSerializer):
    class Meta:
        model = CheckoutFieldSettings
        fields = '__all__'
        read_only_fields = ('id',)


class FreeShippingMethodSerializer(serializers.ModelSerializer):
    class Meta:
        model = FreeShippingMethod
        fields = '__all__'
        read_only_fields = ('id',)


class StorePickupShippingMethodSerializer(serializers.ModelSerializer):
    class Meta:
        model = StorePickupShippingMethod
        fields = '__all__'
        read_only_fields = ('id',)

class StandardShippingMethodSerializer(WritableNestedModelSerializer):
    class Meta:
        model = StandardShippingMethod
        fields = '__all__'
        read_only_fields = ('id',)

class RegeionalDetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = RegeionalDetails
        fields = '__all__'
        read_only_fields = ('id',)


class DeliveryAreaSerializer(WritableNestedModelSerializer):
    regional_details = RegeionalDetailsSerializer(many=True, required=False)
    class Meta:
        model = DeliveryArea
        fields = '__all__'
        read_only_fields = ('id',)



class TaxRateSerializer(serializers.ModelSerializer):
    class Meta:
        model = TaxRate
        fields = '__all__'
        read_only_fields = ('id',)
################### new serializer for user permission section ###################


class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = '__all__'
        read_only_fields = ('id',)


class ResourceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Resource
        fields = '__all__'
        read_only_fields = ('id',)


class PermissionRoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = PermissionRole
        fields = '__all__'
        read_only_fields = ('id', 'operation',)


class OperationSerializer(serializers.ModelSerializer):
    permission_role_operation = PermissionRoleSerializer(
        many=True, required=False)

    class Meta:
        model = Operation
        fields = '__all__'
        read_only_fields = ('id',)


class CustomUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        exclude = ('password',)
        read_only_fields = ('id', 'confirmation_sent_at', 'user','confirmed_at','confirmation',)


class PaymentMethodSerializer(serializers.ModelSerializer):
    class Meta:
        model = PaymentMethod
        fields = '__all__'
        read_only_fields = ('id',)