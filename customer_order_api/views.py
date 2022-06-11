from cgi import print_arguments
from urllib import response
import requests
from rest_framework.renderers import JSONRenderer, TemplateHTMLRenderer
from rest_framework.decorators import api_view, renderer_classes
from doctest import REPORTING_FLAGS
from django.views.decorators.csrf import csrf_exempt
import datetime
import json
from logging import exception
from multiprocessing import context

from django.contrib import messages
from django.http import Http404, HttpResponse
from rest_framework import generics
from rest_framework import status
from rest_framework.exceptions import ValidationError
from rest_framework.permissions import (
    BasePermission,
    IsAuthenticated,
    IsAdminUser,
    AllowAny,
)
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework.response import Response
from rest_framework.views import APIView

from settings_api.serializers import DeliveryAreaSerializer

# from user_auth.verification import Verification
# from .models import UserRole, TaxList
from .serializers import *


# Create your views here.
class MyEncoder(json.JSONEncoder):
    def default(self, obj):
        return obj.__dict__

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
    permission_classes = (IsAuthenticated,)
    
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
                today_orders_serializer = OrderSerializer(today_orders, many=True)
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
                orders = Order.objects.filter(created__range=[start_date, end_date])
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
    # permission_classes = (IsAuthenticated, IsAdminUser,)
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
    permission_classes = (IsAuthenticated,)
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
            user = serializer.validated_data['customer']
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
            if CustomerProfile.objects.filter(email=self.request.data['email']).exists():
                try:
                    customer_ins = CustomerProfile.objects.get(email=self.request.data['email'])
                    print("Check User for Profile")
                    print(customer_ins)
                    print(user)
                except CustomerProfile.DoesNotExist:
                    raise ValidationError('Customer does not exist')
            else:
                if not (self.request.data['email'] is None):
                    raise ValidationError('Customer does not exist')
            print("Ordered By", ordered_by)
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
                            return Response(
                                {'message': '{} is not available'.format(variant_id)},
                                status=status.HTTP_400_BAD_REQUEST
                            )

                        if variant.available < quantity:
                            print("second if block")
                            return Response(
                                {'message': '{} is not available'.format(variant_id)},
                                status=status.HTTP_400_BAD_REQUEST
                            )
                        else:
                            print("else block")
                            total_price = float(variant.price) * float(quantity)
                            print("total price",total_price)
                    except ProductSizeVariant.DoesNotExist:
                        print("except block")
                        return Response(
                            {'message': '{} is not available'.format(variant_id)},
                            status=status.HTTP_400_BAD_REQUEST
                        )
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
                    other_discount = other_discount
                except Exception as e:
                    other_discount = 0
                if other_discount > 0:
                    grand_total = grand_total - other_discount
                    total_discount = total_discount + other_discount
            print("Other Discount Check end")
            print("Delivery Charge Check start")
            delivery = self.request.data['value']
            delivery_area_id = self.request.data['delivery_area_id']
            delivery_charge = float(delivery)
            print("Delivery ", delivery)
            print("Delivery Area Id ", delivery_area_id)


            # try:
            #     print("Delivery Charge Check try block")
            #     delivery_area = DeliveryArea.objects.get(pk=delivery_area_id)
            #     print("Delivery Area", delivery_area)
            #     if delivery_area is None:
            #         raise ValidationError('Delivery area does not exist')
            #     else:
            #         print("Delivery Area else block")
            #         delivery_serializer = DeliveryAreaSerializer(delivery_area)
            #         if delivery_serializer.data['area1_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area1_price']
            #         if delivery_serializer.data['area2_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area2_price']
            #         if delivery_serializer.data['area3_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area3_price']
            #         if delivery_serializer.data['area4_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area4_price']
            #         if delivery_serializer.data['area5_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area5_price']
            #         if delivery_serializer.data['area6_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area6_price']
            #         if delivery_serializer.data['area7_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area7_price']
            #         if delivery_serializer.data['area8_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area8_price']
            #         if delivery_serializer.data['area9_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area9_price']
            #         if delivery_serializer.data['area10_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area10_price']
            #         if delivery_serializer.data['area11_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area11_price']
            #         if delivery_serializer.data['area12_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area12_price']
            #         if delivery_serializer.data['area13_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area13_price']
            #         if delivery_serializer.data['area14_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area14_price']
            #         if delivery_serializer.data['area15_name'] == delivery:
            #             delivery_charge = delivery_serializer.data['area15_price']
            # except DeliveryArea.DoesNotExist:
            #     print("Delivery Charge Check except block")
            #     print("Delivery Area Does Not Exist")
            #     raise ValidationError('Delivery area does not exist')
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
                grand_total=float(grand_total) + float(other_charges)
            print("Due check start")
            payment = self.request.data['paid']
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
                        # order_item=items,
                    )
                    print("Order Save")
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
            data = json.dumps(order_details, indent=4)
            # return Response(data,status=200,template_name=None, headers=None, content_type=None)

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
    permission_classes = (IsAuthenticated,)
    serializer_class = OrderSerializer

    def get_object(self, id):
        try:
            order =  Order.objects.filter(id=id)
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
            raise ValidationError('You can not update a closed or rejected or cancelled order')
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
            if serializer.is_valid():
                try:
                    item_count = 0
                    sub_total = 0
                    customer_address = customer_ins = None
                    p_codes = ''
                    # order items
                    print("Order Items loop")
                    items = serializer.validated_data['order_item']
                    if CustomerProfile.objects.filter(email=self.request.data['email']).exists():
                        try:
                            customer_ins = CustomerProfile.objects.get(
                                email=self.request.data['email'])
                            print("Check User for Profile")
                            print(customer_ins)
                            print(user)
                        except CustomerProfile.DoesNotExist:
                            raise ValidationError('Customer does not exist')
                    else:
                        if not (self.request.data['email'] is None):
                            raise ValidationError('Customer does not exist')
                    # if customer_ins is not None:
                    #     print("Customer Instance found")
                    #     customer_address = Address.objects.filter(customer=customer_ins)

                    # if customer_address is not None:
                    #     print("Customer Address found")
                    # else:
                    #     customer_address = None

                    for i in items:
                        print("Inside order loop", i)
                        product_code = i['product'].id
                        variant_id = i['size'].id
                        quantity = i['quantity']
                        awaiting_stock = i['awaiting_stock']
                        if awaiting_stock is None:
                            awaiting_stock = 0
                            
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
                                    variant.awaitings_stock += int(awaiting_stock)
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
                            total_price = float(single_product.price) * float(quantity)
                            single_product.awaiting_stock += int(awaiting_stock)
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
                        print("Promo Code Check try block")
                        promo_code = self.request.data['promo_code_value']
                        print('Promocode is: ' + promo_code)
                        # promo limit check
                        promo_query = Order.objects.filter(
                            promo_code__code__iexact=promo_code
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
                            other_discount = other_discount
                        except Exception as e:
                            other_discount = 0
                        if other_discount > 0:
                            grand_total = grand_total - other_discount
                            total_discount = total_discount + other_discount
                    print("Other Discount Check end")
                    print("Delivery Charge Check start")
                    delivery = self.request.data['value']
                    delivery_area_id = self.request.data['delivery_area_id']
                    delivery_charge = float(delivery)
                    print("Delivery ", delivery)
                    print("Delivery Area Id ", delivery_area_id)

                    # try:
                    #     print("Delivery Charge Check try block")
                    #     delivery_area = DeliveryArea.objects.get(pk=delivery_area_id)
                    #     print("Delivery Area", delivery_area)
                    #     if delivery_area is None:
                    #         raise ValidationError('Delivery area does not exist')
                    #     else:
                    #         print("Delivery Area else block")
                    #         delivery_serializer = DeliveryAreaSerializer(delivery_area)
                    #         if delivery_serializer.data['area1_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area1_price']
                    #         if delivery_serializer.data['area2_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area2_price']
                    #         if delivery_serializer.data['area3_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area3_price']
                    #         if delivery_serializer.data['area4_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area4_price']
                    #         if delivery_serializer.data['area5_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area5_price']
                    #         if delivery_serializer.data['area6_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area6_price']
                    #         if delivery_serializer.data['area7_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area7_price']
                    #         if delivery_serializer.data['area8_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area8_price']
                    #         if delivery_serializer.data['area9_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area9_price']
                    #         if delivery_serializer.data['area10_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area10_price']
                    #         if delivery_serializer.data['area11_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area11_price']
                    #         if delivery_serializer.data['area12_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area12_price']
                    #         if delivery_serializer.data['area13_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area13_price']
                    #         if delivery_serializer.data['area14_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area14_price']
                    #         if delivery_serializer.data['area15_name'] == delivery:
                    #             delivery_charge = delivery_serializer.data['area15_price']
                    # except DeliveryArea.DoesNotExist:
                    #     print("Delivery Charge Check except block")
                    #     print("Delivery Area Does Not Exist")
                    #     raise ValidationError('Delivery area does not exist')
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
                    payment = self.request.data['paid']
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
                        print("promo_code_instance", promo_code_instance)
                        print("order total", grand_total)
                        print("order total discount", total_discount)
                        print("order subtotal", sub_total)
                        print("promo discount", promo_discount)
                        print("item count ", item_count)
                        print("product_list ", p_codes)
                        print("*****")
                        status = self.request.data['status']
                        print("Status", status)
                    except Exception as e:
                        print("Order Create except block")
                        print("exception "+e)
                        raise ValidationError('Order create failed!')
                except Exception as e:
                    print("exception ",e)
                    raise ValidationError('Order Creation Failed')
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
                        total_due = float(query.order_total) - float(query.paid)
                    print("total due", total_due)
                    if total_due > 0:
                        print("total due if block")
                        total_due = 0
                        query.balance = float(query.paid) - float(query.order_total)
                        total_due = float(query.order_total) - float(query.paid)
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
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            raise ValidationError(
                'You do not have permissions to update this order')
class CheckBalance(APIView):
    """
    endpoint for Viewing Balance
    """
    permission_classes = (IsAuthenticated,)

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
    permission_classes = (IsAuthenticated,)

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
    permission_classes = (IsAuthenticated,)

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
    permission_classes = (IsAuthenticated,)

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
                    "client_id": "267",
                    "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                    "username": "test@pathao.com",
                    "password": "lovePathao",
                    "grant_type": "password"
                }
            elif token_type == "refresh":
                data = {
                    "client_id": "267",
                    "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                    "refresh_token": refresh_token,
                    "grant_type": "refresh_token"
                }
            else: 
                raise ValidationError(
                    'Please provide valid token type')
            print("json format data", data)
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
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
    permission_classes = (IsAuthenticated,)
    
    def post(self,request,format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "267",
                "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                "username": "test@pathao.com",
                "password": "lovePathao",
                "grant_type": "password"
            }
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.post('https://hermes-api.p-stageenv.xyz/aladdin/api/v1/orders', data=request.data, headers=hed)
            content = response.content
            print("content", content)
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view this order')


class StoreView(APIView):
    """
    endpoint for Store
    """
    permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "267",
                "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                "username": "test@pathao.com",
                "password": "lovePathao",
                "grant_type": "password"
            }
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.get('https://hermes-api.p-stageenv.xyz/aladdin/api/v1/stores', headers=hed)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to view this store')
    def post(self,request,format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "267",
                "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                "username": "test@pathao.com",
                "password": "lovePathao",
                "grant_type": "password"
            }
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/stores', data=request.data, headers=hed)
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
    permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "267",
                "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                "username": "test@pathao.com",
                "password": "lovePathao",
                "grant_type": "password"
            }
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.get(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/countries/1/city-list', headers=hed)
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
    permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "267",
                "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                "username": "test@pathao.com",
                "password": "lovePathao",
                "grant_type": "password"
            }
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.get(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/cities/1/zone-list', headers=hed)
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
    permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "267",
                "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                "username": "test@pathao.com",
                "password": "lovePathao",
                "grant_type": "password"
            }
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.get(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/zones/1/area-list', headers=hed)
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
    permission_classes = (IsAuthenticated,)

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin or user.is_superuser:
            data = {
                "client_id": "267",
                "client_secret": "wRcaibZkUdSNz2EI9ZyuXLlNrnAv0TdPUPXMnD39",
                "username": "test@pathao.com",
                "password": "lovePathao",
                "grant_type": "password"
            }
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/issue-token', data=data)
            content = response.content
            response = json.loads(content)
            access_token = response['access_token']
            hed = {'Authorization': 'Bearer ' + access_token}
            print("hed", hed)
            response = requests.post(
                'https://hermes-api.p-stageenv.xyz/aladdin/api/v1/merchant/price-plan', data=request.data, headers=hed)
            content = response.content
            response = json.loads(content)
            print("content", response)
            return Response(response, status=status.HTTP_200_OK)
        else:
            raise ValidationError(
                'You do not have permissions to calculate price')
