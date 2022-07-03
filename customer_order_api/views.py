from cgi import print_arguments
from hashlib import new
from urllib import response
from pyparsing import Or
import requests
from django.contrib.auth.base_user import BaseUserManager
from rest_framework.decorators import api_view, renderer_classes
from doctest import REPORTING_FLAGS
from django.views.decorators.csrf import csrf_exempt
import datetime
import json
from logging import exception
from multiprocessing import context

from django.contrib import messages
from django.http import Http404, HttpResponse, JsonResponse
from rest_framework import generics
from rest_framework import status
from rest_framework.exceptions import ValidationError
from rest_framework.permissions import (
    IsAuthenticated,
)
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework.response import Response
from rest_framework.views import APIView
from settings_api.models import RegeionalDetails

from settings_api.serializers import DeliveryAreaSerializer
from user_auth.models import User
from user_auth.permissions import HasPermission, IsAdmin
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User
from .serializers import *


# Create your views here.

def send_notification(user_from, user_to, title):
    user_from_instance = User.objects.get(username=user_from)
    user_to_instance = User.objects.get(username=user_to)
    Notification.objects.create(
        user_from=user_from_instance,
        user_to_instance=user_to_instance,
        title=title
    )

# Order Filter


class OrderListFilter(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (
        IsAuthenticated, HasPermission('process_manual_order'))

    def get(self, request, *args, **kwargs):
        start = request.GET.get('start')
        end = request.GET.get('end')
        time = request.GET.get('time')

        # ******* format: YYYY-MM-DD
        # ******* start = "2011-01-01"
        # ******* end = "2011-01-31"
        today = datetime.datetime.now()
        if start is None and end is None and time is not None:
            if time == 'today':
                #### Today Order
                today_orders = Order.objects.filter(
                    created__year=today.year, created__month=today.month, created__day=today.day)
                today_orders_serializer = OrderSerializer(
                    today_orders, many=True)
                data = {
                    'orders': today_orders_serializer.data,
                }
            elif time == 'yesterday':
                #### Yesterday Order
                yesterday_orders = Order.objects.filter(
                    created__year=today.year, created__month=today.month, created__day=today.day-1)
                yesterday_orders_serializer = OrderSerializer(
                    yesterday_orders, many=True)
                data = {
                    'orders': yesterday_orders_serializer.data,
                }
            elif time == 'last_7_days':
                #### Last 7 days Order
                last_7_days_orders = Order.objects.filter(
                    created__year=today.year, created__month=today.month, created__day__range=[today.day-7, today.day])
                last_7_days_orders_serializer = OrderSerializer(
                    last_7_days_orders, many=True)
                data = {
                    'orders': last_7_days_orders_serializer.data,
                }
            elif time == 'last_30_days':
                #### Last 30 days Order
                last_30_days_orders = Order.objects.filter(
                    created__year=today.year, created__month=today.month, created__day__range=[today.day-30, today.day])
                last_30_days_orders_serializer = OrderSerializer(
                    last_30_days_orders, many=True)
                data = {
                    'orders': last_30_days_orders_serializer.data,
                }
            elif time == 'this_month':
                #### This month Order
                this_month_orders = Order.objects.filter(
                    created__year=today.year, created__month=today.month)
                this_month_orders_serializer = OrderSerializer(
                    this_month_orders, many=True)
                data = {
                    'orders': this_month_orders_serializer.data,
                }
            elif time == 'last_month':
                #### Last month Order
                last_month_orders = Order.objects.filter(
                    created__year=today.year, created__month=today.month-1)
                last_month_orders_serializer = OrderSerializer(
                    last_month_orders, many=True)
                data = {
                    'orders': last_month_orders_serializer.data,
                }
            elif time == 'last_3_month':
                #### Last 3 months Order
                last_3_months_orders = Order.objects.filter(
                    created__year=today.year, created__month__range=[today.month-3, today.month])
                last_3_months_orders_serializer = OrderSerializer(
                    last_3_months_orders, many=True)
                data = {
                    'orders': last_3_months_orders_serializer.data,
                }
            elif time == 'last_6_month':
                #### Last 6 months Order
                last_6_months_orders = Order.objects.filter(
                    created__year=today.year, created__month__range=[today.month-6, today.month])
                last_6_months_orders_serializer = OrderSerializer(
                    last_6_months_orders, many=True)
                data = {
                    'orders': last_6_months_orders_serializer.data,
                }
            else:
                raise ValidationError(
                    {'message': 'Invalid time parameter'})

            return Response(data, status=status.HTTP_200_OK)
        elif start is not None and end is not None:
            start_date = datetime.datetime.strptime(start, "%Y-%m-%d")
            end_date = datetime.datetime.strptime(end, "%Y-%m-%d")
            if start_date > end_date:
                raise ValidationError("Start date must be less than end date")
            else:
                start_date = datetime.datetime.strptime(start, "%Y-%m-%d")
                end_date = datetime.datetime.strptime(end, "%Y-%m-%d")
                orders = Order.objects.filter(
                    created__range=[start_date, end_date])
                orders_serializer = OrderSerializer(orders, many=True)
                data = {
                    'orders': orders_serializer.data,
                    'start': start,
                    'end': end,
                }
                return Response(data, status=status.HTTP_200_OK)


# class CreateOrder
class OrderList(generics.ListAPIView):
    """
    endpoint for viewing order only for admin
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (
        IsAuthenticated, HasPermission('process_manual_order'))
    serializer_class = OrderSerializer
    queryset = Order.objects.filter(Order_reference="ONLINE-SALE")


# class ShopOrderList(generics.ListAPIView):
#     """
#     vendor owner order list. Only owner of the store can view this list
#     """
#     # permission_classes = (IsAuthenticated,)
#     serializer_class = OrderSerializer

#     def get_queryset(self):
#         queryset = Order.objects.filter(
#             # vendor__user=self.request.user
#             Order_reference="ONLINE-SALE"
#         )
#         return queryset


class OrderCreate(generics.CreateAPIView):
    """
    endpoint for creating order
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (
        IsAuthenticated, HasPermission('process_manual_order'))
    serializer_class = OrderSerializer

    queryset = Order.objects.filter(Order_reference="ONLINE-SALE")

    def perform_create(self, serializer):
        sub_total = 0
        grand_total = 0
        total_price = 0
        total_due = 0
        order_details = {}
        user = self.request.user
        print(user)
        if user.is_admin:
            try:
                user = serializer.validated_data['customer']
            except:
                user = None
            print(user)
        print('Accessed by request:   ' + self.request.data['ordered_by'])
        customer_ins = None
        customer_address = None
        if serializer.validated_data['ordered_by'] == 'ecommerce':
            print("Ecommerce if block")
            ordered_by = 'ecommerce'
            print(serializer.validated_data['ordered_by'])
            try:
                customer_ins = CustomerProfile.objects.get(user=user)
                print("Check User for Profile")
                print(customer_ins)
                print(user)
                if self.request.data['separate_delivery_address'] == 'true':
                    customer_address = Address.objects.filter(customer=customer_ins).update(
                        **self.request.data['delivery_address']
                    )
                    customer_address.type = 'SHIPPING'
                    customer_address.save()
                    customer_address = Address.objects.get(
                        customer=customer_ins)
                else:
                    customer_address = Address.objects.get(
                        customer=customer_ins, type='BILLING')
                    if customer_address is None:
                        customer_shipping_address = customer_address
                        customer_shipping_address.type = 'SHIPPING'
                        customer_shipping_address.save()
                        customer_shipping_address = Address.objects.get(
                            customer=customer_ins, type='SHIPPING')
            except CustomerProfile.DoesNotExist:
                raise ValidationError('Customer does not exist')
        else:
            ordered_by = self.request.user.username
            print("Else block, order by "+ordered_by)
            try:
                email = self.request.data['email']
            except:
                email = None
            if email == "" or email is None:
                email = None
            if CustomerProfile.objects.filter(phone=self.request.data['phone']).exists():
                try:
                    customer_ins = CustomerProfile.objects.get(
                        phone=self.request.data['phone'])
                    print("Check User for Profile")
                    print(customer_ins)
                    print(user)
                except CustomerProfile.DoesNotExist:
                    raise ValidationError('Customer does not exist')
            else:
                new_user = None
                if not (self.request.data['phone'] is None):
                    username = self.request.data['phone']
                    email = None
                    print("Phone is not None", username)

                    try:
                        
                        first_name = self.request.data['fullname'].split(' ')[0]
                        last_name = self.request.data['fullname'].split(' ')[1]
                        username = self.request.data['phone']
                        email = self.request.data['email']
                        print("1")
                    except:
                        username = self.request.data['email'].split('@')[0]
                        email = self.request.data['email']
                        print("2")

                    # if get_user_model().objects.filter(username=username).exists():
                    #     print("3")
                    #     return Response(
                    #         {'message': 'User already exists'})
                    password = BaseUserManager().make_random_password()
                    print("4")
                    print(username, email, password, first_name,
                          last_name, self.request.data['phone'])
                    try:
                        new_user = get_user_model().objects.create_user(username=username, email=email, password=password, first_name=first_name, last_name=last_name, phone=self.request.data['phone'], is_admin=False, is_customer=True, is_active=True, is_staff=False, is_superuser=False)
                    except Exception as e:
                        new_user = get_user_model().objects.get(username=username)
                        new_user.email = email
                        new_user.first_name = first_name
                        new_user.last_name = last_name
                        new_user.phone = self.request.data['phone']
                        new_user.save()
                        print("7")
                        print(new_user)
                    # new_user.save()
                    # print(new_user1)
                    print(new_user.first_name)
                    print(new_user.email)
                    print(new_user.phone)
                    # new_user = User.objects.filter(phone=new_user1.phone)
                    # print(new_user)

                    

                    if new_user is not None:
                        print("5")
                        try:
                            try:
                                customer_ins = CustomerProfile.objects.create(
                                    user=new_user,
                                    phone=self.request.data['phone'],
                                    first_name=first_name,
                                    last_name=last_name,
                                    email=email,
                                    address=self.request.data['address'],
                                )
                            except Exception as e:
                                customer_ins = CustomerProfile.objects.create(
                                    user=new_user,
                                    phone=self.request.data['phone'],
                                    first_name=first_name,
                                    last_name=last_name,
                                    address=self.request.data['address'],
                                )
                        except Exception as e:
                            print(e)
                            print("6")
                            customer_ins = CustomerProfile.objects.get(
                                user=new_user)
                            customer_ins.phone = self.request.data['phone']
                            customer_ins.first_name = first_name
                            customer_ins.last_name = last_name
                            customer_ins.address = self.request.data['address']
                            customer_ins.save()
                        print(customer_ins)

                print("User Instance ", new_user)
            print("Ordered By ", ordered_by)
            print("Customer ", customer_ins)
        try:
            item_count = 0
            p_codes = ''
            # order items
            print("Order Items loop")
            items = serializer.validated_data['order_item']
            for i in items:
                print("Inside order loop", i)
                product_code = i['product'].id
                variant_id = i['size'].id
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
                        variant = ProductSizeVariant.objects.get(pk=variant_id)
                        print("Variant", variant)
                        if variant.parent_id != single_product.id:
                            print("first if block")
                            raise ValidationError(
                                '{} is not available'.format(variant_id))

                        if variant.available < quantity:
                            print("second if block")
                            raise ValidationError(
                                '{} is not available'.format(variant_id))
                        else:
                            print("else block")
                            total_price = float(
                                variant.price) * float(quantity)
                            print("total price", total_price)
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
                    other_discount = float(self.request.data['other_discount'])
                    other_discount_type = self.request.data['other_discount_type']
                    if other_discount_type == 'PERCENTAGE':
                        other_discount = float(
                            grand_total * float(other_discount) / 100)
                except Exception as e:
                    print(e)
                    other_discount = 0
                if other_discount > 0:
                    grand_total = grand_total - other_discount
                    total_discount = total_discount + other_discount
            print("Other Discount Check end")
            print("Delivery Charge Check start")
            try:
                delivery_area_id = int(self.request.data['delivery_area_id'])
                print("Delivery Area Id ", delivery_area_id)
                if delivery_area_id is not None:
                    try:
                        region = RegeionalDetails.objects.get(
                            pk=delivery_area_id)
                        print("Region", region)
                        delivery_charge = float(region.region_price)
                    except RegeionalDetails.DoesNotExist:
                        print("Region Does Not Exist")
                        raise ValidationError(
                            '{} is not available'.format(delivery_area_id))
                else:
                    print("Region else block")
                    delivery_charge = 0

            except Exception as e:
                print("Delivery Charge Check except block")
                delivery_charge = 0
            print("Delivery Charge Check end")
            print("Delivery Charge", delivery_charge)
            delivery_charge = float(delivery_charge)
            if delivery_charge > 0:
                grand_total = float(grand_total) + float(delivery_charge)

            try:
                other_charges = float(self.request.data['other_charges'])
            except:
                other_charges = 0
            other_charges = float(other_charges)
            if other_charges > 0:
                grand_total = float(grand_total) + float(other_charges)
            print("Due check start")
            try:
                payment = float(self.request.data['paid'])
                print("Payment", payment)
            except:
                print("Due check except block")
                payment = 0
            if payment is None or payment == "0":
                payment = 0.00
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

            try:
                pathao_city_id = self.request.data['pathao_city_id']
                pathao_zone_id = self.request.data['pathao_zone_id']
                pathao_area_id = self.request.data['pathao_area_id']
                pathao_instruction = self.request.data['pathao_instruction']
                pathao_item_description = self.request.data['pathao_item_description']
            except:
                pathao_city_id = 0
                pathao_zone_id = 0
                pathao_area_id = 0
                pathao_instruction = None
                pathao_item_description = None
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
                'pathao_city_id': pathao_city_id,
                'pathao_zone_id': pathao_zone_id,
                'pathao_area_id': pathao_area_id,
                'pathao_instruction': pathao_instruction,
                'pathao_item_description': pathao_item_description,
            }
            print("Order Create End")
            print("Customer Instance", customer_ins)
            try:
                print("Order Create try block")
                # this for loop should be after serializer.save()
                for i in items:
                    print("Inside order loop", i)
                    product_info = i['product']
                    variant_info = i['size']
                    quantity = i['quantity']
                    print("info", product_info, variant_info, quantity)
                    try:
                        print("Stock update try block")
                        product = Product.objects.get(pk=product_info.id)
                        product.stock = product_info.stock - quantity
                        product.save()
                        variant = ProductSizeVariant.objects.get(
                            pk=variant_info.id)
                        variant.stock = variant_info.stock - quantity
                        variant.available = variant_info.available - quantity
                        variant.save()
                        print("Variant", variant)
                    except Exception as e:
                        print("Stock update except block")
                        print("exception "+e)
                        raise ValidationError('stock update failed!')
                print("*****")
                print(customer_ins)
                print("promo_code_instance", promo_code_instance)
                print("order total", grand_total)
                print("order total discount", total_discount)
                print("order subtotal", sub_total)
                print("delivery address", customer_address)
                print("promo discount", promo_discount)
                print("orderer by", ordered_by)
                print("item count ", item_count)
                print("product_list ", p_codes)
                print("*****")
                status = self.request.data['status']
                print("Status", status)
                try:
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
                        status=status,
                        pathao_city_id=pathao_city_id,
                        pathao_zone_id=pathao_zone_id,
                        pathao_area_id=pathao_area_id,
                        pathao_instruction=pathao_instruction,
                        pathao_item_description=pathao_item_description,
                        # order_item=items,
                    )
                    print("Order Save")
                    order = Order.objects.get(pk=serializer.data['id'])
                    date = str(order.created).split('T')
                    date = date[0].split(' ')[0]
                    print("Date", date)
                    date = date.split("-")
                    date = ("").join(date)
                    order_id = 'ORD-'+str(order.id)+str(date)
                    # order.pathao_merchant_order_id = str(order.id)+str(date)
                    print("Order ID", order_id)
                    order.order_id = order_id
                    try:
                        if self.request.data['is_paid']:
                            print(order.order_total)
                            order.paid = order.order_total
                            order.payment_method="CASHON_DELIVERY"
                            order.payment_status="PAID"
                            order.is_payment_successful=True
                    except Exception as e:
                        print(e)
                    
                    order.save()
                    serializer = OrderSerializer(order)
                    try:
                        if self.request.data['is_sms_send'] == True:
                            orderID1= str(order.id)
                            print(orderID1)
                            pdf_url = "https://whimsical-beignet-ec43bb.netlify.app/admin/manual_orders/pdf?id=" + orderID1
                            print(pdf_url)
                            body = "Dear " + customer_ins.first_name + ", Your order has been placed successfully. Your order number is " + str(
                                order_id) + ". Your order total is BDT " + str(grand_total) +". Order Invoice url is "+ pdf_url +". Thank you for shopping with us."
                            print("body", body)
                            message_detail = {
                                "api_key": "KEY-upxs2en3c33csakv1kcwzlu0rr7rb41n",
                                "api_secret": "de3r47mLR@FQZfCy",
                                "request_type": "SINGLE_SMS",
                                "message_type": "TEXT",
                                "mobile": customer_ins.phone,
                                "message_body": body,
                            }
                            response = requests.post(
                                'https://portal.adnsms.com/api/v1/secure/send-sms', data=message_detail)
                    except:
                        print("SMS Send Exception")
                        pass
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
            # messages.success(self.request, 'Your order has been placed!')
            # data = json.dumps(order_details, indent=4)
            return Response(serializer.data, status=200)

        except Exception as e:
            return Response({
                'status': False,
                'status_code': 400,
                'detail': 'Failed to create order',
                'order_details': None
            })


class OrderDetail(APIView):
    """
    endpoint for retriving,patching
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (
        IsAuthenticated, HasPermission('process_manual_order'))
    serializer_class = OrderSerializer

    def get_object(self, id):
        try:
            order = Order.objects.filter(id=id)
            print("Order is: " + str(order))
            serializer = OrderSerializer(order, many=True)
            return serializer
        except Order.DoesNotExist:
            raise Http404

    def get(self, request, id, format=None):
        user = self.request.user
        order_obj = Order.objects.get(id=id)
        print("is_owner", order_obj)
        # print(is_owner)
        if user.is_admin or user.is_superuser:
            if order_obj is not None:
                serializer = OrderSerializer(order_obj)
                return Response(serializer.data)
            else:
                return Response({
                    'status': False,
                    'status_code': 404,
                    'detail': 'Order not found',
                    'order_details': None
                })
        else:
            raise ValidationError(
                'You do not have permissions to view this item or order does not exist')

    def put(self, request, id, format=None):
        response = {}
        user = self.request.user
        query = Order.objects.get(id=id)
        is_completed = query.status
        print("Query", query)
        print("Order query is ", query)
        if is_completed == 'Closed' or is_completed == 'Rejected' or is_completed == 'Cancelled':
            print("Order if block")
            raise ValidationError(
                'You can not update a closed or rejected or cancelled order')
        elif query is not None:
            print("Order else block")
            # print("request data--> ", request.data)
            # print()
            # print()
            # print()
            # print("serializer--> ", OrderUpdateSerializer())
            serializer = OrderSerializer(
                query,
                data=request.data
            )
            print("serializer", serializer)
            status = self.request.data['status']
            if serializer.is_valid():
                try:
                    item_count = 0
                    sub_total = 0
                    customer_address = customer_ins = None
                    p_codes = ''
                    # order items
                    print("Order Items loop")
                    items = serializer.validated_data['order_item']
                    if CustomerProfile.objects.filter(phone=self.request.data['phone']).exists():
                        try:
                            customer_ins = CustomerProfile.objects.get(
                                phone=self.request.data['phone'])
                            print("Check User for Profile")
                            print(customer_ins)
                            print(user)
                        except CustomerProfile.DoesNotExist:
                            raise ValidationError('Customer does not exist')
                    else:
                        if not (self.request.data['phone'] is None):
                            raise ValidationError('Customer does not exist')

                    for i in items:
                        print("Inside order loop", i)
                        product_code = i['product'].id
                        variant_id = i['size'].id
                        quantity = i['quantity']
                        awaiting_stock = i['awaiting_stock']
                        i['discount'] = 0
                        print("product code", product_code)
                        print("variant id", variant_id)
                        print("quantity", quantity)
                        print("Awaiting Stock ", awaiting_stock)
                        if awaiting_stock is None:
                            awaiting_stock = 0

                        print("info", product_code, variant_id, quantity)
                        try:
                            print("Inside try")
                            single_product = Product.objects.get(
                                pk=product_code)
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
                                if variant.parent_id != single_product.id:
                                    print("first if block")
                                    return Response(
                                        {'message': '{} is not available'.format(
                                            variant_id)},
                                        status=status.HTTP_400_BAD_REQUEST
                                    )

                                if variant.available < quantity:
                                    print("second if block")
                                    return Response(
                                        {'message': '{} is not available'.format(
                                            variant_id)},
                                        status=status.HTTP_400_BAD_REQUEST
                                    )
                                else:
                                    print("else block")
                                    total_price = float(
                                        variant.price) * float(quantity)
                                    print("total price", total_price)
                                    calculate_awaiting_stock = variant.awaiting_stock
                                    if calculate_awaiting_stock is None:
                                        calculate_awaiting_stock = 0
                                    calculate_stock = variant.stock
                                    if calculate_stock is None:
                                        calculate_stock = 0
                                    variant.awaiting_stock = int(
                                        calculate_awaiting_stock) + int(awaiting_stock)
                                    variant.stock = int(
                                        calculate_stock) + int(awaiting_stock)
                                    variant.save()
                            except ProductSizeVariant.DoesNotExist:
                                print("except block")
                                return Response(
                                    {'message': '{} is not available'.format(
                                        variant_id)},
                                    status=status.HTTP_400_BAD_REQUEST
                                )
                        else:
                            print("parent else block")
                            total_price = float(
                                single_product.price) * float(quantity)
                            calculate_awaiting_stock = single_product.awaiting_stock
                            if calculate_awaiting_stock is None:
                                calculate_awaiting_stock = 0
                            single_product.awaiting_stock = int(
                                calculate_awaiting_stock) + int(awaiting_stock)
                            single_product.save()
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
                        promo_query = query.promo_code
                        print("Promo Query", promo_query)
                        if promo_query is not None:
                            print("Promo Code Instance found")
                            promo_code_instance = PromoCode.objects.get(
                                code=promo_query)
                            print("Promo Code Instance", promo_code_instance)
                            if promo_code_instance.discount_type == 'PERCENTAGE':
                                print("Promo Code is percentage")
                                promo_discount = (
                                    grand_total * float(promo_code_instance.discount)) / 100
                                print("Promo Discount", promo_discount)
                                grand_total = grand_total - promo_discount
                                print("Grand Total", grand_total)
                            else:
                                print("Promo Code is not percentage")
                                promo_discount = float(
                                    promo_code_instance.discount)
                                grand_total = grand_total - promo_discount
                                print("Grand Total", grand_total)
                            total_discount = promo_discount
                            print("Total Discount", total_discount)
                    except Exception as e:
                        print("Promo Code Check except block")
                        promo_query = 0
                    other_discount = 0
                    print("Other Discount Check start")
                    if promo_code_instance == None:
                        try:
                            other_discount = float(
                                self.request.data['total_discount'])
                            other_discount = other_discount
                        except Exception as e:
                            other_discount = 0
                        if other_discount > 0:
                            grand_total = grand_total - other_discount
                            total_discount = total_discount + other_discount
                    print("Other Discount Check end")
                    try:
                        other_charges = float(
                            self.request.data['other_charges'])
                    except:
                        other_charges = 0
                    other_charges = float(other_charges)
                    if other_charges > 0:
                        grand_total = float(grand_total) + float(other_charges)
                    print("Due check start")
                    payment = self.request.data['amount']
                    payment = float(payment)
                    if payment is None or payment == 0:
                        payment = 0.00
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
                    try:
                        shipping_charge = self.request.data['shipping_charge']
                        grand_total = float(grand_total) + float(shipping_charge)
                        print(grand_total)
                    except Exception as e:
                        print(e)
                    # order_details = {
                    #     'total_amount': grand_total,
                    #     'tran_id': 'TRX' + str(now) + str(customer_ins.id),
                    #     'cus_name': customer_ins.first_name,
                    #     'cus_email': customer_ins.email,
                    #     'cus_phone': customer_ins.phone,
                    #     'num_of_item': item_count,
                    #     'product_name': p_codes,
                    #     'total_due': total_due,
                    #     'total_paid': payment,
                    # }
                    print("Order Create End")
                    try:
                        print("Order Create try block")
                        # this for loop should be after serializer.save()
                        for i in items:
                            print("Inside order loop", i)
                            product_info = i['product']
                            variant_info = i['size']
                            quantity = i['quantity']
                            print("info", product_info, variant_info, quantity)
                            try:
                                print("Stock update try block")
                                product = Product.objects.get(
                                    pk=product_info.id)
                                product.stock = product_info.stock - quantity
                                product.save()
                                variant = ProductSizeVariant.objects.get(
                                    pk=variant_info.id)
                                variant.stock = variant_info.stock - quantity
                                variant.available = variant_info.available - quantity
                                variant.save()
                                print("Variant", variant)
                            except Exception as e:
                                print("Stock update except block")
                                print("exception "+e)
                                raise ValidationError('stock update failed!')
                        print("*****")
                        print("promo_code_instance", promo_code_instance)
                        print("order total", grand_total)
                        print("order total discount", total_discount)
                        print("order subtotal", sub_total)
                        print("promo discount", promo_discount)
                        print("item count ", item_count)
                        print("product_list ", p_codes)
                        print("*****")
                        print("Status", status)
                    except Exception as e:
                        print("Order Create except block")
                        print("exception "+e)
                        raise ValidationError('Order create failed!')
                except Exception as e:
                    print("exception ", e)
                    e = str(e)
                    return Response(
                        {'message': 'Order create failed!', 'error': e},
                    )
                serializer.save(
                    customer=customer_ins,
                    promo_code=promo_code_instance,
                    order_total=grand_total,
                    sub_total=sub_total,
                    total_discount=total_discount,
                    promo_discount=promo_discount,
                    item_count=item_count,
                    product_list=p_codes,
                    status=status,
                    # delivery_address=customer_address,
                )
                total_paid = query.paid
                total_due = float(query.order_total) - float(query.paid)
                if request.data['amount']:
                    amount = request.data['amount']
                    if amount is None or amount == "0":
                        amount = 0
                    if total_paid is None or total_paid == "0":
                        query.paid = amount
                    else:
                        query.paid = float(total_paid) + float(amount)
                        total_due = float(query.order_total) - \
                            float(query.paid)
                    print("total due", total_due)
                    if total_due > 0:
                        print("total due if block")
                        total_due = 0
                        query.balance = float(
                            query.paid) - float(query.order_total)
                        total_due = float(query.order_total) - \
                            float(query.paid)
                        if total_due < 0 or total_due == 0:
                            total_due = 0
                        print("balance", query.balance)
                        query.save()
                        print("Order updated successfully")
                        total_paid = query.paid
                response['total_paid'] = total_paid
                response['total_due'] = total_due
                response['order_details'] = serializer.data
                response['success'] = "Order status updated successfully"

                # if order is accepted send email to customer
                # if serializer.validated_data['status'] == "ACCEPTED":
                #     subject = "Order accepted"
                #     msg = "Your order no: {} has been accepted".format(
                #         instance.id)
                #     Verification().send_order_confirmation_email(
                #         instance.customer.user.email,
                #         subject,
                #         msg
                #     )
                return Response(response)
            else:
                return Response(serializer.errors)
        else:
            raise ValidationError(
                'You do not have permissions to update this order')


class CheckBalance(APIView):
    """
    endpoint for Viewing Balance
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def get(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "api_key": "KEY-upxs2en3c33csakv1kcwzlu0rr7rb41n",
                "api_secret": "de3r47mLR@FQZfCy"
            }
            print("json format data", data)
            response = requests.post(
                'https://portal.adnsms.com/api/v1/secure/check-balance', data=data)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view this item or order does not exist')


class SendMultipleSMS(APIView):
    """
    endpoint for Sending multiple sms
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def post(self, request, *args, **kwargs):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "api_key": "KEY-upxs2en3c33csakv1kcwzlu0rr7rb41n",
                "api_secret": "de3r47mLR@FQZfCy",
                "request_type": "GENERAL_CAMPAIGN",
                "message_type": "TEXT",
                "mobile": request.data['mobile'],
                "message_body": request.data['message'],
                "isPromotional": int(request.data['isPromotional']),
                "campaign_title": request.data['campaign_title']
            }
            print("json format data", data)
            response = requests.post(
                'https://portal.adnsms.com/api/v1/secure/send-sms', data=data)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view this item or order does not exist')


class SendSingleSMS(APIView):
    """
    endpoint for Sending single sms
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def post(self, request, *args, **kwargs):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "api_key": "KEY-upxs2en3c33csakv1kcwzlu0rr7rb41n",
                "api_secret": "de3r47mLR@FQZfCy",
                "request_type": "SINGLE_SMS",
                "message_type": "TEXT",
                "mobile": request.data['mobile'],
                "message_body": request.data['message']
            }
            print("json format data", data)
            response = requests.post(
                'https://portal.adnsms.com/api/v1/secure/send-sms', data=data)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view this item or order does not exist')


############# Pathao API #############
class GetToken(APIView):
    """
    endpoint for getting access token
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            token_type = request.data['token_type']
            token_obj = PathaoToken.objects.first()
            print("token_obj", token_obj)
            if token_obj:
                refresh_token = token_obj.refresh_token
                print("refresh_token", refresh_token)
            if token_type == "access":
                data = {
                    "client_id": "1158",
                    "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                    "username": "aporajitatumi2@gmail.com",
                    "password": "aporajitatumi88",
                    "grant_type": "password"
                }
            elif token_type == "refresh":
                data = {
                    "client_id": "1158",
                    "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                    "refresh_token": refresh_token,
                    "grant_type": "refresh_token"
                }
            else:
                raise ValidationError(
                    'Please provide valid token type')
            print("json format data", data)
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            if token_type == "access":
                if token_obj is not None:
                    token_obj.delete()
                PathaoToken.objects.create(
                    access_token=response['access_token'],
                    refresh_token=response['refresh_token'])
            elif token_type == "refresh":
                token_obj.refresh_token = response['refresh_token']
                token_obj.save()
            else:
                raise ValidationError(
                    'Token type does not exist')

            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view this item or order does not exist')


class CreatePathaoOrder(APIView):
    """
    endpoint for creating pathao order
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            id = None
            id = request.data['order_id']
            if id is not None:
                order = Order.objects.get(id=request.data['order_id'])
                print("full name: ", order.fullname)
                print("mobile: ", order.phone)
                print("address: ", order.address)
                print("city: ", order.pathao_city_id)
                print("zone: ", order.pathao_zone_id)
                print("area: ", order.pathao_area_id)
                print("instruction: ", order.pathao_instruction)
                print("description: ", order.pathao_item_description)
                print("amount: ", order.order_total)
            order_dict = {}
            if order is not None:
                order_dict = {
                    "store_id": 61765,
                    "merchant_order_id": str(order.order_id),
                    "recipient_name": str(order.fullname),
                    "recipient_phone": str(order.phone),
                    "recipient_address": str(order.address),
                    "recipient_city": int(order.pathao_city_id),
                    "recipient_zone": int(order.pathao_zone_id),
                    "recipient_area": int(order.pathao_area_id),
                    "delivery_type": 48,
                    "item_type": 2,
                    "item_quantity": 1,
                    "item_weight": 0.5,
                    "special_instruction": str(order.pathao_instruction),
                    "item_description": str(order.pathao_item_description),
                    "amount_to_collect": int(order.order_total),
                }
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/orders', data=order_dict, headers=hed)
            if response.status_code == 200:
                content = response.content
                response = json.loads(content)
                print("response", response)
                order.pathao_status = True
                order.save()
                return Response(response, status=status.HTTP_200_OK)
            else:
                raise ValidationError(
                    'Order could not be sended to pathao')
        else:
            raise ValidationError(
                'You do not have permissions to view this order')


class CreatePathaoBulkOrder(APIView):
    """
    endpoint for creating pathao order
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Content-type': 'application/json',
                   'Authorization': 'Bearer ' + access_token}
            bulk_order = {
                "orders": []
            }
            
            for order in request.data["orders"]:
                print(order["order_id"])
                order_id = order["order_id"]
                try:
                    order_obj = Order.objects.get(order_id=order_id)
                except:
                    raise ValidationError(
                        'Order does not exist')
                if order_obj is not None:
                    order_dict = {
                        "item_type": 2,
                        "store_id": 61765,
                        "merchant_order_id": str(order_obj.order_id),
                        "recipient_name": str(order_obj.fullname),
                        "recipient_phone": str(order_obj.phone),
                        "recipient_city": int(order_obj.pathao_city_id),
                        "recipient_zone": int(order_obj.pathao_zone_id),
                        "recipient_area": int(order_obj.pathao_area_id),
                        "recipient_address": str(order_obj.address),
                        "amount_to_collect": int(order_obj.order_total),
                        "item_quantity": 1,
                        "item_weight": 0.5,
                        "special_instruction": str(order_obj.pathao_instruction),
                        "item_description": str(order_obj.pathao_item_description),
                        "merchant_id": 2,
                        "delivery_type": 48,
                    }
                    bulk_order['orders'].append(order_dict)

            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/orders/bulk', data=json.dumps(bulk_order), headers=hed)
            if response.status_code == 202 or response.status_code == 200:
                content = response.content
                response = json.loads(content)
                print("response", response)
                for order in request.data["orders"]:
                    order_id = order["order_id"]
                    try:
                        order_obj = Order.objects.get(order_id=order_id)
                    except:
                        raise ValidationError(
                            'Order does not exist')
                    if order_obj is not None:
                        order_obj.pathao_status = True
                        order_obj.save()
                return Response(response, status=status.HTTP_200_OK)
            else:
                raise ValidationError(
                    'Order could not be sended to pathao')
        else:
            raise ValidationError(
                'You do not have permissions to view this order')


class StoreView(APIView):
    """
    endpoint for Store
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def get(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.get(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/stores', headers=hed)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view this store')

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/stores', data=request.data, headers=hed)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to create store')


class CityList(APIView):
    """
    endpoint for city list
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def get(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.get(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/countries/1/city-list', headers=hed)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view city list')


class ZoneList(APIView):
    """
    endpoint for zone list
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            city_id = None
            try:
                city_id = int(request.data['city_id'])
            except:
                raise ValidationError(
                    'Please provide valid city')
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)

            if city_id is not None:
                response = requests.get(
                    'https://api-hermes.pathaointernal.com/aladdin/api/v1/cities/'+str(city_id)+'/zone-list', headers=hed)
                content = response.content
                response = json.loads(content)
                print("content", response)
                return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view zone')


class AreaList(APIView):
    """
    endpoint for area list
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin,)

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            zone_id = None
            try:
                zone_id = int(request.data['zone_id'])
            except:
                raise ValidationError(
                    'Please provide valid zone')
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            if zone_id is not None:
                response = requests.get(
                    'https://api-hermes.pathaointernal.com/aladdin/api/v1/zones/'+str(zone_id)+'/area-list', headers=hed)
                content = response.content
                response = json.loads(content)
                print("content", response)
                return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view area')


class PriceCalculation(APIView):
    """
    endpoint for price calculation
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,IsAdmin,)

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "1158",
                "client_secret": "GTp6wcdMzCdKAuOqnTCUmdMkMYU7HUDFKdQC3T2K",
                "username": "aporajitatumi2@gmail.com",
                "password": "aporajitatumi88",
                "grant_type": "password"
            }
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.post(
                'https://api-hermes.pathaointernal.com/aladdin/api/v1/merchant/price-plan', data=request.data, headers=hed)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to calculate price')
