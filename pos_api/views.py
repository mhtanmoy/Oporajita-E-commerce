from cgi import print_directory
import datetime
import json
from urllib import request
from django.contrib import messages
from django.http import Http404, response
from rest_framework import generics, status
from rest_framework.views import APIView
from rest_framework.authentication import BasicAuthentication
from rest_framework.exceptions import ValidationError
from rest_framework.generics import get_object_or_404
from rest_framework.permissions import (
    IsAuthenticated
)
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework.response import Response
from app_api.models import PromoCode
from customer_order_api.models import Order
from customer_order_api.serializers import OrderSerializer
from customer_profile_api.models import Address
from inventory_api.models import Product, ProductSizeVariant
from user_auth.permissions import IsAdmin
from .serializers import *
# Create your views here.


class OutletList(generics.ListCreateAPIView):
    """
    endpoint for creating outlet
    """
    # permission_classes = (IsAdmin,)
    serializer_class = OutletSerializer
    queryset = Outlet.objects.filter()

    def get_queryset(self):
        queryset = Outlet.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add outlet')
        else:
            raise ValidationError(
                'You do not have access to create outlet')


class OutletDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update delete outlet
    """
    # permission_classes = (IsAuthenticated,)
    serializer_class = OutletSerializer
    queryset = Outlet.objects.all()


class RegisterList(generics.ListCreateAPIView):
    """
    endpoint for creating register
    """
    # permission_classes = (IsAdmin,)
    serializer_class = RegisterSerializer
    queryset = Register.objects.filter()

    def get_queryset(self):
        queryset = Register.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add register')
        else:
            raise ValidationError(
                'You do not have access to create register')

class CloseRegisterList(generics.UpdateAPIView):
    """
    endpoint for creating register
    """
    # permission_classes = (IsAdmin,)

    queryset = Register.objects.all()
    serializer_class = RegisterSerializer
    lookup_field = 'pk'


    def update(self, request, pk):
        # if self.request.user.is_admin:


        
        if self.request.user:
            try:  
                instance = Register.objects.get(id=pk)
                try:
                    if self.request.data['close']:
                        dt = datetime.datetime.now()
                        now = int(dt.strftime("%Y%m%d%H%M%S"))
                        instance.closed_at = dt
                        instance.save()
                except:
                    if self.request.data['open']:
                        dt = datetime.datetime.now()
                        now = int(dt.strftime("%Y%m%d%H%M%S"))
                        instance.opened_at = dt
                        instance.save()
                serializer = RegisterSerializer(instance)
                return Response(serializer.data)
            except Exception as e:
                print(e)
                raise ValidationError(
                    'Failed to close register')
        else:
            raise ValidationError(
                'You do not have access')


class RefundOrderList(generics.UpdateAPIView):
    """
    endpoint for creating register
    """
    # permission_classes = (IsAdmin,)

    queryset = Order.objects.all()
    serializer_class = OrderSerializer
    lookup_field = 'pk'


    def update(self, request, pk):
        # if self.request.user.is_admin:
        if self.request.user:
            try:  
                instance = Order.objects.get(id=pk)
                try:
                    if self.request.data['refund']:
                        temp = '-REF'
                        instance.refund = True
                        instance.order_id = (instance.order_id)+temp
                        instance.save()
                except Exception as e:
                    print(e)
                    raise ValidationError('Failed')
                serializer = OrderSerializer(instance)
                return Response(serializer.data)
            except Exception as e:
                print(e)
                raise ValidationError(
                    'Failed')
        else:
            raise ValidationError(
                'You do not have access')



class RegisterDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update delete register
    """
    # permission_classes = (IsAuthenticated,)
    serializer_class = RegisterSerializer
    queryset = Register.objects.all()

class PosOrderList(generics.ListAPIView):
    """
    endpoint for viewing order only for admin
    """
    # permission_classes = (IsAuthenticated, IsAdminUser,)
    serializer_class = OrderSerializer
    queryset = Order.objects.filter(Order_reference="IN-STORE-POS-SALE")

class PosOrderCreate(generics.CreateAPIView):
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
        order_details = {}
        user = self.request.user
        email = ""
        for i in self.request.data:
            if i == 'email':
                email = self.request.data[i]
        if email == "":
            email= None
        print(self.request.data)
                
        if self.request.data.get('Order_reference') is None:
            raise ValidationError(
                'Order reference is required adads')
        else:
            order_reference = self.request.data.get('Order_reference')

        if user.is_admin:
            print('Accessed by user:   ' + user.username)
            ordered_by = self.request.user.username
            if email is None:
                print('Email is None')
                customer_ins = None
                print('Customer is None', customer_ins)
            elif CustomerProfile.objects.filter(email=email).exists():
                customer_ins = CustomerProfile.objects.get(email=self.request.data['email'])
                print('Customer found:   ' + customer_ins.email)
            else:
                print('Customer not found but email is not None')
                raise ValidationError(
                    'Customer not found')
            print("Ordered By", ordered_by)
        else:
            print('order by', self.request.data['ordered_by'])
            raise ValidationError('You do not have access to create POS order')
        try:
            item_count = 0
            p_codes = ''
            total_discount_on_item = 0
            # order items
            print("Order Items loop")
            items = serializer.validated_data['order_item']
            for i in items:
                print("Inside order loop", i)
                product_code = i['product'].id
                print("Product Code ", product_code)
                variant_id = i['size'].id
                print("Variant ID ", variant_id)
                quantity = i['quantity']
                print("Quantity ", quantity)
                item_discount = i['discount']
                print("item discount", item_discount)
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
                            print("first if block",variant.parent_id)
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
                            if item_discount is None or item_discount == 0:
                                item_discount = 0
                            else:
                                item_discount = float(item_discount)
                            print(item_discount)
                            discount_on_item = float(
                                total_price * item_discount / 100)
                            print("discount on item", discount_on_item)
                            total_discount_on_item = float(
                                total_discount_on_item + discount_on_item)
                            print("total discount on item", total_discount_on_item)
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
                p_codes += p_codes + ', ' + str(product_code)
                print("Product Code string", p_codes)
            print("Order Items loop end")
            grand_total = sub_total
            promo_code_instance = None
            promo_discount = 0
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
                            promo_discount = float(grand_total * float(promo_code_instance.discount) / 100)
                            grand_total = grand_total - promo_discount
                        else:
                            promo_discount = float(promo_code_instance.discount)
                            grand_total = grand_total - promo_discount
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
                    other_discount = other_discount+total_discount_on_item
                except Exception as e:
                    other_discount = 0
                if other_discount > 0:
                    grand_total = grand_total - other_discount
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
            print("number of items", item_count)

            order_details = {
                'total_amount': grand_total,
                'num_of_item': item_count,
                'product_name': p_codes,
                'total_due': total_due,
                'total_paid': payment,
            }
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
                        product = Product.objects.get(pk=product_info.id)
                        product.stock = product_info.stock - quantity
                        product.save()
                        variant = ProductSizeVariant.objects.get(
                            pk=variant_info.id)
                        variant.stock = variant_info.stock - quantity
                        variant.available = variant_info.available - quantity
                        variant.save()
                    except Exception as e:
                        print("exception "+e)
                        raise ValidationError('stock update failed!')
                reg = self.request.data['register']
                if reg:
                    register = Register.objects.filter(id=reg)
                
                print(reg)
                if customer_ins is not None:
                    print("None Customer if block")
                    serializer.save(
                        customer=customer_ins,
                        Order_reference=order_reference,
                        promo_code=promo_code_instance,
                        order_total=grand_total,
                        sub_total=sub_total,
                        promo_discount=promo_discount,
                        ordered_by=ordered_by,
                        item_count=item_count,
                        product_list=p_codes,
                        paid = payment,
                        status = self.request.data['status'],
                        register=register,
                    )
                else:
                    print("Customer else block")
                    try:
                        customer_ins = CustomerProfile.objects.get(email="pos@admin.com")
                    except:
                        customer_ins = CustomerProfile.objects.create(
                            email="pos@admin.com",
                            first_name="POS",
                            last_name="admin",
                        )

                    serializer.save(
                        customer = customer_ins,
                        Order_reference=order_reference,
                        promo_code=promo_code_instance,
                        order_total=grand_total,
                        sub_total=sub_total,
                        promo_discount=promo_discount,
                        ordered_by=ordered_by,
                        item_count=item_count,
                        product_list=p_codes,
                        paid=payment,
                        status = self.request.data['status'],
                        register=register,
                    )
                    print("Order Create try block end")
            except Exception as e:
                print(e)
                raise ValidationError('Order Creation Failed')
            # print(order_details)
            # print(serializer.data)
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


class POSOrderDetail(APIView):
    """
    endpoint for retriving,patching
    """
    permission_classes = (IsAuthenticated,)
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
            raise ValidationError(
                'You can not update a closed or rejected or cancelled order')
        elif query is not None:
            serializer = OrderSerializer(
                query,
                data=request.data
            )

            if serializer.is_valid():
                response['success'] = "Order status updated successfully"
                serializer.save()
                total_paid = query.paid
                if request.data['paid']:
                    total_due = float(query.order_total) - \
                        float(request.data['paid'])
                    if total_due < 0:
                        total_due = 0
                        query.balance = (total_due * (-2)) + total_due
                        query.save()
                response['total_paid'] = total_paid
                response['total_due'] = total_due
                response['order_details'] = serializer.data

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
                # if order is completed send email to customer
                # elif serializer.validated_data['status'] == "DONE":
                #     subject = "Order completed"
                #     msg = "Your order no: {} has been completed".format(
                #         instance.id)
                #     Verification().send_order_confirmation_email(
                #         instance.customer.user.email,
                #         subject,
                #         msg
                #     )
                return Response(response, status=status.HTTP_200_OK)
            else:
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            raise ValidationError(
                'You do not have permissions to update this order')
