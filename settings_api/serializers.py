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

class DeliveryAreaSerializer(serializers.ModelSerializer):
    # rates = serializers.PrimaryKeyRelatedField(queryset=StandardShippingMethod.objects.all(), required=False, allow_null=True)
    class Meta:
        model = DeliveryArea
        fields = '__all__'
        read_only_fields = ('id',)




class TaxRateSerializer(serializers.ModelSerializer):
    class Meta:
        model = TaxRate
        fields = '__all__'
        read_only_fields = ('id',)
