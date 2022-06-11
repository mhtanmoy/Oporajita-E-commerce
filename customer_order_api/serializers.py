# from tkinter.messagebox import NO
from drf_writable_nested import WritableNestedModelSerializer
from rest_framework import serializers

from customer_profile_api.serializers import AddressSerializer
# from inventory_api.serializers import ProductSerializer
from .models import *


class OrderItemSerializer(serializers.ModelSerializer):
    product_code = serializers.CharField(
        source='product.code',
        read_only=True
    )

    class Meta:
        model = OrderItem
        fields = '__all__'
        read_only_fields = ('id', 'order',)


class OrderSerializer(WritableNestedModelSerializer):
    customer_id = serializers.CharField(
        source="customer.user.id",
        read_only=True
    )
    customer_username = serializers.CharField(
        source="customer.user.username",
        read_only=True
    )
    customer_email = serializers.CharField(
        source="customer.user.email",
        read_only=True
    )
    customer_phone = serializers.CharField(
        source="customer.phone",
        read_only=True
    )
    customer = serializers.PrimaryKeyRelatedField(queryset=CustomerProfile.objects.all(), required=False, allow_null=True, allow_empty=True)

    order_item = OrderItemSerializer(
        many=True, required=False)
    # payment = PaymentDetailsSerializer(required=False)
    delivery_address = AddressSerializer(
        read_only=True, required=False)
    promo_discount = serializers.CharField(
        source="promo_code.discount",
        read_only=True
    )

    class Meta:
        model = Order
        fields = '__all__'
        read_only_fields = (
            'id',
            'is_payment_successful',
            'order_total',
            'sub_total',
            'total_discount',
            'status',
            'created',
            'updated'
        )

    # def save(self, validated_data):
    #     data = validated_data
    #     print(data)
    #     order_item_data = self.validated_data.pop('order_item')
    #     if self.validated_data.get('customer'):
    #         customer = self.validated_data.pop('customer')
    #         customer_profile = CustomerProfile.objects.get(
    #             user=customer['user'])
    #         self.validated_data['customer'] = customer_profile
    #     else:
    #         validated_data['customer'] = None
    # def create(self, validated_data):
    #     data = validated_data
    #     order_item_data = validated_data.pop('order_item')
    #     if validated_data.get('customer'):
    #         customer = validated_data.pop('customer')
    #         customer_profile = CustomerProfile.objects.get(
    #             user=customer['user'])
    #         validated_data['customer'] = customer_profile
    #     else:
    #         validated_data['customer'] = None
    #     order = Order.objects.create(**validated_data)
    #     order = Order.objects.create(**validated_data)
    #     for item in order_item_data:
    #         OrderItem.objects.create(order=order, **item)
    #     return order
    #     order_item_data = validated_data.pop('order_item')
    #     if validated_data.get('customer') is None:
    #         validated_data.pop('customer')
    #     order = Order.objects.create(customer=None, **validated_data)
    #     for item in order_item_data:
    #         OrderItem.objects.create(order=order, **item)
    #     return order
        # if validated_data['customer'] is None:
        #     validated_data['customer'] = None
        # order = Order.objects.create(**validated_data)
        # return order
