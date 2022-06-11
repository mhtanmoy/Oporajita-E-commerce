from ast import Add
import datetime
import email
import json
from django.contrib import messages
from rest_framework.response import Response
from rest_framework.exceptions import ValidationError
from rest_framework import generics
from rest_framework.views import APIView
from app_api.models import News, Popup, PromoCode
from app_api.serializers import NewsSerializer, PopupSerializer
from company_api.models import MetaProperty
from company_api.serializers import MetaPropertySerializer
from customer_order_api.models import Order
from customer_order_api.serializers import OrderSerializer
from customer_profile_api.models import Address, CustomerProfile
from user_auth.models import User
from customer_profile_api.serializers import AddressSerializer
from inventory_api.models import Product, ProductSizeVariant
from inventory_api.serializers import ProductSerializer
from rest_framework.permissions import (
    AllowAny,
)
from django.shortcuts import get_object_or_404
# Create your views here.


class ProductList(generics.ListAPIView):
    """
    endpoint for creating product category
    """
    permission_classes = (AllowAny,)
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    serializer_class = ProductSerializer
    queryset = Product.objects.filter(is_active=True)

    def get_queryset(self):
        category_filter = self.request.GET.get('category')
        print(category_filter)
        sort_order = self.request.GET.get('sort_order')
        if sort_order is None:
            sort_order = '-created'
        if category_filter is None or category_filter == '-1':
            queryset = Product.objects.filter(
                is_active=True,).order_by(sort_order)
        else:
            queryset = Product.objects.filter(
                is_active=True, category_id=category_filter).order_by(sort_order)

        return queryset


class ProductDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update product category
    """
    permission_classes = (AllowAny,)
    serializer_class = ProductSerializer
    queryset = Product.objects.filter(is_active=True)


class OrderCreate(generics.CreateAPIView):
    """
    endpoint for creating order
    """
    permission_classes = (AllowAny,)
    serializer_class = OrderSerializer

    queryset = Order.objects.filter(Order_reference="ONLINE-SALE")

    def perform_create(self, serializer):
        sub_total = 0
        grand_total = 0
        total_price = 0
        total_due = 0
        order_details = {}
        user = self.request.user
        data = self.request.data
        print(user)
        if user.is_authenticated:
            user = user
        else:
            user = None
        if user is not None:
            customer_ins = CustomerProfile.objects.get(user=user)
            print("Check User for Profile")
            print("customer email ", customer_ins.email)
            print("customer id ", customer_ins.id)
            print(user)
            try:
                customer_address = Address.objects.filter(
                    customer_profile_id=customer_ins.id)
                if customer_address[0].type == 'SHIPPING':
                    customer_address = customer_address[0]
                else:
                    customer_address = customer_address[1]
                print("customer address ", customer_address.id)
            except:
                print("No address found")
                customer_address = Address.objects.create(
                    customer_id=customer_ins.id,
                    type='SHIPPING',
                    division=self.request.data['division'],
                    district=self.request.data['district'],
                    postal_code=self.request.data['postal_code'],
                    phone=self.request.data['phone_number'],
                    title='Mr.'
                )
                print(
                    "**********Customer instance to get the address ", customer_ins)
                # else:
                #     raise ValidationError("Customer Address Not Created")
            print("Customer Address after get", customer_address)
        else:
            if user is None:
                if User.objects.filter(email='guest@gmail.com').exists():
                    user = User.objects.get(
                        email='guest@gmail.com')
                    print("User is ", user.username, " from existing")
                else:
                    user = User.objects.create_user(
                        'guest', 'guest@gmail.com', 'guest1234')
                    user.first_name = "guest"
                    user.last_name = "guest"
                    user.save()
                    print("User is Guest created")
            if CustomerProfile.objects.filter(user=user).exists():
                customer_ins = CustomerProfile.objects.get(user=user)
                print("Check User for Profile")
                try:
                    customer_address = Address.objects.filter(
                        customer_id=customer_ins.id)
                    if len(customer_address) == 1:
                        customer_address = customer_address[0]
                    else:
                        if customer_address[0].type == 'SHIPPING':
                            customer_address = customer_address[0]
                        else:
                            customer_address = customer_address[1]
                    print("customer address ", customer_address.id)
                except:
                    print("No address found")
                    customer_address = Address.objects.create(
                        customer_id=customer_ins.id,
                        type='SHIPPING',
                        division=self.request.data['division'],
                        district=self.request.data['district'],
                        postal_code=self.request.data['postal_code'],
                        phone=self.request.data['phone_number'],
                        title='Mr.'
                    )
                    print(
                        "**********Customer instance to get the address ", customer_ins)
            else:
                customer_ins = CustomerProfile.objects.create(
                    user=user,
                    email='guest@gmail.com',
                    phone=self.request.data['phone_number'],
                    first_name='Guest',
                    password='guest1234'
                )
                print("Customer instance to get the address ", customer_ins)
                print("divison ", self.request.data['division'])
                print("district ", self.request.data['district'])
                print("postal_code ", self.request.data['postal_code'])
                print("phone_number ", self.request.data['phone_number'])
                customer_address = Address.objects.create(
                    customer_id=customer_ins.id,
                    type='SHIPPING',
                    division=self.request.data['division'],
                    district=self.request.data['district'],
                    postal_code=self.request.data['postal_code'],
                    phone=self.request.data['phone_number'],
                    title='Mr.'
                )
                print(
                    "**********Customer instance to get the address ", customer_ins)
        print("Customer Address after create", customer_address)
        print("Customer instance after create", customer_ins)
        print('Accessed by request:   ' + self.request.data['ordered_by'])
        if self.request.data['ordered_by'] == 'ecommerce':
            print("Ecommerce if block")
            ordered_by = 'ecommerce'
            print(self.request.data['ordered_by'])
        else:
            raise ValidationError('Order can be placed only by ecommerce')
        try:
            item_count = 0
            p_codes = ''
            # order items
            print("Order Items loop")
            items = self.request.data['order_item']
            print("Items ", items)
            for i in items:
                print("Inside order loop", i)
                product_code = i['product']
                print("Product Code", product_code)
                variant_id = i['size']
                quantity = i['quantity']
                print("info", product_code, variant_id, quantity)
                try:
                    print("Inside try")
                    single_product = Product.objects.get(pk=product_code)
                    print("Inside try")
                    print("Single product", single_product)
                except Product.DoesNotExist:
                    print("Product Does Not Exist")
                    raise ValidationError(
                        '{} is not available'.format(product_code))
                print("Outside try except")
                # print("Single Product", single_product.advance_price)
                print("Quantity", quantity)
                if variant_id is not None:
                    try:
                        variant = ProductSizeVariant.objects.get(
                            pk=variant_id)
                        print("Variant", variant)
                        print("variant parent id ", variant.parent_id)
                        print("variant available", variant.available)
                        print("variant price", variant.price)
                        if variant.parent_id != single_product.id:
                            print("first if block")
                            raise ValidationError(
                                '{} is not available'.format(variant_id))
                        print("before second if else block")
                        if variant.available < quantity:
                            print("second if block")
                            raise ValidationError(
                                '{} is not available'.format(variant_id))
                        else:
                            print("else block")
                            print("variant price", variant.price)
                            print("quantity", quantity)
                            total_price = float(
                                variant.price) * float(quantity)
                    except ProductSizeVariant.DoesNotExist:
                        print("except block")
                        raise ValidationError(
                            '{} is not available'.format(variant_id))

                else:
                    print("parent else block")
                    total_price = float(single_product.price) * float(quantity)
                print("Total Price", total_price)
                sub_total += total_price
                item_count = item_count + quantity
                print("Item Count", item_count)
                p_codes = p_codes + str(product_code) + ', '
                print("Product Code string", p_codes)
            print("Order Items loop end")
            grand_total = sub_total
            promo_code_instance = None
            promo_discount = 0
            total_discount = 0.00
            print("Promo Code Check start")
            try:
                print("Promo Code Check try block")
                promo_code = self.request.data['promo_code_value']
                print('Promocode is: ' + promo_code)
                # promo limit check
                promo_query = Order.objects.filter(
                    promo_code__code__iexact=promo_code,
                    customer=customer_ins
                ).count()
                try:
                    promo_code_instance = PromoCode.objects.get(
                        code__iexact=promo_code,
                    )
                    if promo_query < promo_code_instance.limit and promo_code_instance.is_valid:
                        if promo_code_instance.discount_type == 'PERCENTAGE':
                            promo_discount = float(
                                grand_total * float(promo_code_instance.discount) / 100)
                            grand_total = grand_total - promo_discount
                            total_discount = promo_discount
                        else:
                            promo_discount = float(
                                promo_code_instance.discount)
                            grand_total = grand_total - promo_discount
                            total_discount = promo_discount
                except Exception as e:
                    print(e)
                    raise ValidationError('Invalid promo code')
            except Exception as e:
                print("Promo Code Check except block")
                promo_query = 0
            other_discount = 0
            print("Other Discount Check start")
            if promo_code_instance == None:
                try:
                    other_discount = float(
                        self.request.data['other_discount'])
                except Exception as e:
                    other_discount = 0
                if other_discount > 0:
                    grand_total = grand_total - other_discount
                    total_discount = total_discount + other_discount
            print("Other Discount Check end")
            try:
                other_charges = float(self.request.data['other_charges'])
            except:
                other_charges = 0
            if other_charges > 0:
                grand_total = grand_total + other_charges
            print("Due check start")
            payment = self.request.data['paid']
            if payment is None:
                payment = 0
            else:
                payment = float(payment)
            print("Payment", type(payment))
            if payment > 0 and payment <= grand_total:
                print("Payment if block")
                total_due = grand_total - payment
                print("Total Due", total_due)
            elif payment > grand_total:
                print("Payment else block")
                total_due = 0
                balance = payment - grand_total
                print("Balance", balance)
            else:
                print("Payment else block")
                total_due = grand_total
            print("Due check end")
            dt = datetime.datetime.now()
            now = int(dt.strftime("%Y%m%d%H%M%S"))
            print("Order Create Start")
            print("Customer", customer_ins)
            print("Customer name", customer_ins.first_name)
            print("Customer Phone", customer_ins.phone)
            print("Customer Email", customer_ins.email)
            print("number of items", item_count)

            order_details = {
                'total_amount': grand_total,
                'tran_id': 'TRX' + str(now) + str(customer_ins.id),
                'cus_name': customer_ins.first_name,
                'cus_email': customer_ins.email,
                'cus_phone': customer_ins.phone,
                'num_of_item': item_count,
                'product_name': p_codes,
                'total_due': total_due,
                'total_paid': payment,
            }
            print("Order Create End")
            print("Customer Instance", customer_ins)
            try:
                print("Order Create try block")
                # this for loop should be after serializer.save()
                print("*****")
                print(customer_ins)
                print("promo_code_instance", promo_code_instance)
                print("order toatl", grand_total)
                print("order total discount", total_discount)
                print("order subtotal", sub_total)
                print("delivery address", customer_address)
                print("promo discount", promo_discount)
                print("orderer by", ordered_by)
                print("item count ", item_count)
                print("product_list ", p_codes)
                print("*****")
                try:
                    print("Order Create try block")
                    serializer.save(
                        customer=customer_ins,
                        Order_reference="ONLINE-SALE",
                        promo_code=promo_code_instance,
                        order_total=grand_total,
                        sub_total=sub_total,
                        total_discount=total_discount,
                        delivery_address=customer_address,
                        promo_discount=promo_discount,
                        ordered_by=ordered_by,
                        item_count=item_count,
                        product_list=p_codes,
                        # order_item=items,
                    )
                    print("Order Save")
                    print("Stock update start")
                    for i in items:
                        print("Inside order loop for updating the stock", i)
                        product_info = i['product']
                        variant_info = i['size']
                        quantity = i['quantity']
                        print("info", product_info, variant_info, quantity)
                        try:
                            print("Stock update try block")
                            product = Product.objects.get(pk=product_info)
                            product.stock = product.stock - quantity
                            product.save()
                            variant = ProductSizeVariant.objects.get(
                                pk=variant_info)
                            variant.stock = variant.stock - quantity
                            variant.available = variant.available - quantity
                            variant.save()
                            print("Variant", variant)
                        except Exception as e:
                            print("Stock update except block")
                            print("exception ", e)
                            raise ValidationError('stock update failed!')
                    print("Stock update end")
                except Exception as e:
                    print("Order Save except")
                    print(e)
                    raise ValidationError('Order Save failed!')
                print("Order Create End & serializer saved")
            except Exception as e:
                print("exception "+e)
                raise ValidationError('Order Creation Failed')
            print(order_details)
            print(serializer.data)
            messages.success(self.request, 'Your order has been placed!')
            # return Response(data,status=200,template_name=None, headers=None, content_type=None)
            data = json.dumps(order_details, indent=4)

        except Exception as e:
            return Response({
                'status': False,
                'status_code': 400,
                'detail': 'Failed to create order',
                'order_details': None
            })
        # else:
        #     return Response({
        #         'status': False,
        #         'status_code': 400,
        #         'detail': 'Failed to create order as customer not found',
        #         'order_details': None
        #     })


class PopupAPI(APIView):
    serializer_class = PopupSerializer

    def get(self, request):
        if Popup.objects.exists():
            general_setting = Popup.objects.first()
            if general_setting.popup_enable:
                serializer = PopupSerializer(general_setting)
                return Response(serializer.data)
            else:
                return Response({
                    'status': False,
                    'status_code': 400,
                    'detail': 'Popup is disabled',
                    'popup': None
                })
        else:
            raise ValidationError("Popup not found")


class NewsAPI(APIView):
    serializer_class = NewsSerializer

    def get(self, request):
        if News.objects.exists():
            general_setting = News.objects.first()
            if general_setting.popup_enable:
                serializer = NewsSerializer(general_setting)
                return Response(serializer.data)
            else:
                return Response({
                    'status': False,
                    'status_code': 400,
                    'detail': 'News not found',
                    'news': None
                })
        else:
            raise ValidationError("News not found")


class MetaPropertyAPI(APIView):

    def get(self, request):
        if MetaProperty.objects.exists():
            general_setting = MetaProperty.objects.first()
            serializer = MetaPropertySerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Meta Information not found")
