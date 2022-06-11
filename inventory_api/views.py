from dataclasses import dataclass
from random import randint
from cgi import print_directory
from itertools import chain, product
import json
from multiprocessing import context
from sys import api_version
from time import time
from unicodedata import decimal, name
from urllib import response
from django.db.models import Sum
from django.contrib import messages
from django.core.checks.messages import Error
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models.functions import Coalesce
from django.dispatch import receiver
# Create your views here.
from django.http import HttpResponse, JsonResponse, HttpResponseRedirect
from pyparsing import null_debug_action
from rest_framework.response import Response
from django.views import View
from rest_framework import generics
from rest_framework import status
from rest_framework.authentication import BasicAuthentication
from rest_framework.exceptions import ValidationError
from rest_framework.generics import get_object_or_404
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework.permissions import (
    IsAuthenticated
)
from rest_framework.views import APIView
from customer_order_api.models import Order, OrderItem
from customer_profile_api.models import CustomerProfile

# from user_profile.serializers import (
#     CustomerProfileSerializer, RestaurantOwnerProfileSerializer
# )
from user_auth.permissions import IsAdmin
from .serializers import *
import datetime
# Create your views here.

class DashboardView(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, *args, **kwargs):
        today = datetime.datetime.now()
        print("today ", today)
        print("year ", today.year)
        print("month ", today.month)
        print("day ", today.day)
        print("hour ", today.hour)
        print("minute ", today.minute)
        print("second ", today.second)
        param = request.GET.get('param')
        if param == 'sales':
            #### Hourly Sales
            updated = Order.objects.filter(
                created__year=today.year,
                created__month=today.month,
                created__day=today.day,
                status='Accepted'
            )
            print("updated ", updated)
            updated = updated.raw(
                "SELECT min(id) id, to_char(created, 'HH12 AM') as name, SUM(order_total) as y FROM customer_order_api_order WHERE DATE(created) = DATE(CURRENT_DATE) GROUP BY to_char(created, 'HH12 AM') ORDER BY to_char(created, 'HH12 AM')")
            am_list = []
            pm_list = []
            for i in updated:
                print("updated ", i.name, i.y)
                if 'AM' in i.name:
                    am_list.append({'name': i.name, 'y': i.y})
                else:
                    pm_list.append({'name': i.name, 'y': i.y})
            am_list.sort(key=lambda x: x['name'])
            pm_list.sort(key=lambda x: x['name'])

            #### Total sales
            total_sales = str(Order.objects.all().aggregate(Sum('order_total')).get('order_total__sum'))
            print("total_sales ", total_sales)
            
            context = {
                'am': am_list,
                'pm': pm_list,
                'total': total_sales,
            }
            return JsonResponse(context, safe=False)
        elif param == 'orders':
            #### Hourly Orders
            updated = Order.objects.filter(status='Accepted').raw(
                "SELECT min(id) id, to_char(created, 'HH12 AM') as name, COUNT(id) as y FROM customer_order_api_order GROUP BY to_char(created, 'HH12 AM') ORDER BY to_char(created, 'HH12 AM')")
            am_list = []
            pm_list = []
            for i in updated:
                print("updated ", i.name, i.y)
                if 'AM' in i.name:
                    am_list.append({'name': i.name, 'y': i.y})
                else:
                    pm_list.append({'name': i.name, 'y': i.y})
            am_list.sort(key=lambda x: x['name'])
            pm_list.sort(key=lambda x: x['name'])

            #### Total sales
            total_orders = Order.objects.all().count().__str__()
            print("total ", total_orders)
            print(type(total_orders))

            context = {
                'am': am_list,
                'pm': pm_list,
                'total': total_orders,
            }
            return JsonResponse(context, safe=False)
            #### Last hour sales
            # last_hour_sales = Order.objects.filter(
            #     created__year=today.year,
            #     created__month=today.month,
            #     created__day=today.day,
            #     created__hour=today.hour-1
            # ).aggregate(Sum('order_total'))


            #### Last hour orders
            # last_hour_orders = Order.objects.filter(
            #     created__year=today.year,
            #     created__month=today.month,
            #     created__day=today.day,
            #     created__hour=today.hour-1
            # ).count()
            #### Total orders
            # total_orders = Order.objects.all().count()
            #### Gross Profit
            # ******* have to do *********
        elif param == 'payments':
            #### last hour payments
            updated = Order.objects.filter(status='Accepted').raw(
                "SELECT min(id) id, to_char(created, 'HH12 AM') as name, SUM(paid) as y FROM customer_order_api_order GROUP BY to_char(created, 'HH12 AM') ORDER BY to_char(created, 'HH12 AM')")
            am_list = []
            pm_list = []
            for i in updated:
                print("updated ", i.name, i.y)
                if 'AM' in i.name:
                    am_list.append({'name': i.name, 'y': i.y})
                else:
                    pm_list.append({'name': i.name, 'y': i.y})
            am_list.sort(key=lambda x: x['name'])
            pm_list.sort(key=lambda x: x['name'])

            #### Total payments
            total_payments = str(Order.objects.all().aggregate(Sum('paid')).get('paid__sum'))
            print("total_payments ", total_payments)
            context = {
                'am': am_list,
                'pm': pm_list,
                'total': total_payments,
            }
            return JsonResponse(context, safe=False)
            #### last hour payments
            # last_hour_payments = PaymentDetails.objects.filter(
            #     created__year=today.year,
            #     created__month=today.month,
            #     created__day=today.day,
            #     created__hour=today.hour-1
            # ).aggregate(Sum('amount_paid'))

            #### total payments
            # total_payments = PaymentDetails.objects.all().aggregate(Sum('amount_paid'))
        elif param == 'discounts':
            #### last hour discounts
            updated = Order.objects.filter(status='Accepted').raw(
                "SELECT min(id) id, to_char(created, 'HH12 AM') as name, SUM(total_discount) as y FROM customer_order_api_order GROUP BY to_char(created, 'HH12 AM') ORDER BY to_char(created, 'HH12 AM')")
            am_list = []
            pm_list = []
            for i in updated:
                print("updated ", i.name, i.y)
                if 'AM' in i.name:
                    am_list.append({'name': i.name, 'y': i.y})
                else:
                    pm_list.append({'name': i.name, 'y': i.y})
            am_list.sort(key=lambda x: x['name'])
            pm_list.sort(key=lambda x: x['name'])

            #### Total payments
            total_payments = str(Order.objects.all().aggregate(
                Sum('total_discount')).get('total_discount__sum'))
            print("total_payments ", total_payments)
            context = {
                'am': am_list,
                'pm': pm_list,
                'total': total_payments,
            }
            return JsonResponse(context, safe=False)
            #### last hour discounts
            # check=str(last_hour_payments.get('amount_paid__sum'))
            # if check == 'None':
            #     last_hour_discounts = 0
            # else:
            #     last_hour_discounts = float(str(last_hour_sales.get('order_total__sum'))) - float(str(last_hour_payments.get('amount_paid__sum')))
        

            #### total discounts
            # check=str(total_payments.get('amount_paid__sum'))
            # if check == 'None':
            #     total_discounts = 0
            # else:
                # total_discounts = float(str(total_sales.get('order_total__sum'))) - float(str(total_payments.get('amount_paid__sum')))
            #### last hour visitors
            # ******* have to do *********
        elif param == 'customers':
            #### last hour customers
            updated = CustomerProfile.objects.raw(
                "SELECT min(id) id, to_char(created, 'HH12 AM') as name, COUNT(id) as y FROM customer_profile_api_customerprofile GROUP BY to_char(created, 'HH12 AM') ORDER BY to_char(created, 'HH12 AM')")
            am_list = []
            pm_list = []
            for i in updated:
                print("updated ", i.name, i.y)
                if 'AM' in i.name:
                    am_list.append({'name': i.name, 'y': i.y})
                else:
                    pm_list.append({'name': i.name, 'y': i.y})
            am_list.sort(key=lambda x: x['name'])
            pm_list.sort(key=lambda x: x['name'])

            #### Total customers
            total_customers = CustomerProfile.objects.all().count().__str__()
            print("total_customers ", total_customers)
            context = {
                'am': am_list,
                'pm': pm_list,
                'total': total_customers,
            }
            return JsonResponse(context, safe=False)
            #### last hour customers
            # last_hour_customers = CustomerProfile.objects.filter(
            #     created__year=today.year,
            #     created__month=today.month,
            #     created__day=today.day,
            #     created__hour=today.hour-1
            # ).count()
            #### total customers
            # total_customers = CustomerProfile.objects.all().count()
            #### last hour visitors
            # ******* have to do *********
            #### last hour customers
            # last_hour_customers = CustomerProfile.objects.filter(
            #     created__year=today.year,
            #     created__month=today.month,
            #     created__day=today.day,
            #     created__hour=today.hour-1
            # ).count()

            #### total customers
            # total_customers = CustomerProfile.objects.all().count()
        elif param == 'messages':
            #### Last hour messages
            updated = CustomerMessage.objects.raw(
                "SELECT min(id) id, to_char(created, 'HH12 AM') as name, COUNT(id) as y FROM inventory_api_customermessage GROUP BY to_char(created, 'HH12 AM') ORDER BY to_char(created, 'HH12 AM')")
            am_list = []
            pm_list = []
            for i in updated:
                print("updated ", i.name, i.y)
                if 'AM' in i.name:
                    am_list.append({'name': i.name, 'y': i.y})
                else:
                    pm_list.append({'name': i.name, 'y': i.y})
            am_list.sort(key=lambda x: x['name'])
            pm_list.sort(key=lambda x: x['name'])

            #### Total messages
            total_messages = CustomerMessage.objects.all().count().__str__()
            print("total_messages ", total_messages)
            context = {
                'am': am_list,
                'pm': pm_list,
                'total': total_messages,
            }
            return JsonResponse(context, safe=False)
            #### Last hour messages
            # last_hour_messages = CustomerMessage.objects.filter(
            #     created__year=today.year,
            #     created__month=today.month,
            #     created__day=today.day,
            #     created__hour=today.hour-1
            # ).count()
            #### Total messages
            # total_messages = CustomerMessage.objects.all().count()
            #### Last hour customer messages
            # last_hour_customer_messages = CustomerMessage.objects.filter(
            #     created__year=today.year,
            #     created__month=today.month,
            #     created__day=today.day,
            #     created__hour=today.hour-1
            # ).count()

            #### total customer messages
            # total_customer_messages = CustomerMessage.objects.all().count()
        elif param == 'top_products':
            #### Top products
            top_products = OrderItem.objects.raw(
                "SELECT id, COUNT(product_id) as y FROM customer_order_api_orderitem GROUP BY id")
            top_products_list = []
            for i in top_products:
                top_products_list.append(ProductSerializer(i, many=True))
            print("top_products_list ", top_products_list)
            context = {
                'total': top_products_list,
            }
            return Response(top_products_list)
        #### Top selling products
        # top_selling_products = Order.objects.values('product_id').annotate(
        #     total_sales=Sum('order_total')).order_by('-total_sales')[:5]

        # context = {
        #     'last_hour': today.hour-1,
        #     'last_hour_sales': last_hour_sales,
        #     'total_sales': total_sales,
        #     'last_hour_orders': last_hour_orders,
        #     'total_orders': total_orders,
        #     'last_hour_payments': last_hour_payments,
        #     'total_payments': total_payments,
        #     'last_hour_discounts': last_hour_discounts,
        #     'total_discounts': total_discounts,
        #     'last_hour_customers': last_hour_customers,
        #     'total_customers': total_customers,
        #     'last_hour_customer_messages': last_hour_customer_messages,
        #     'total_customer_messages': total_customer_messages,
        #     # 'last_hour_visitors': last_hour_visitors,
        #     # 'total_visitors': total_visitors,
        #     # 'top_selling_products': top_selling_products,
        # }
        return Response("Send a key to get value")


def get_product_category_list():
    return ProductCategory.objects.filter(is_active=True)


# class DepartmentList(generics.ListCreateAPIView):
#     """
#     endpoint for creating product category for each vendor
#     """
#     permission_classes = (IsAdmin,)
#     serializer_class = DepartmentSerializer
#     queryset = Departments.objects.filter()

#     def get_queryset(self):
#         queryset = Departments.objects.all()
#         return queryset

#     def perform_create(self, serializer):
#         # if self.request.user.is_admin:
#         if self.request.user:
#             try:
#                 serializer.save()
#             except:
#                 raise ValidationError(
#                     'Failed to add department')
#         else:
#             raise ValidationError(
#                 'You do not have access to create department')


# class DepartmentDetail(generics.RetrieveUpdateDestroyAPIView):
#     """
#     endpoint for retrieve update product category
#     """
#     permission_classes = (IsAuthenticated,)
#     serializer_class = DepartmentSerializer
#     queryset = Departments.objects.all()

class SupplierList(generics.ListCreateAPIView):
    """
    endpoint for creating product category for each vendor
    """
    # permission_classes = (IsAdmin,)
    serializer_class = SupplierSerializer
    queryset = Supplier.objects.filter()

    def get_queryset(self):
        queryset = Supplier.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add department')
        else:
            raise ValidationError(
                'You do not have access to create department')


class SupplierDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update delete product category
    """
    # permission_classes = (IsAuthenticated,)
    serializer_class = SupplierSerializer
    queryset = Supplier.objects.all()


class ProductCategoryList(generics.ListCreateAPIView):
    """
    endpoint for creating product category for each vendor
    """
    # permission_classes = (IsAdmin,)
    serializer_class = ProductCategorySerializer
    queryset = ProductCategory.objects.filter()

    def get_queryset(self):
        queryset = ProductCategory.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                # department = get_object_or_404(Departments, pk=self.request.data['department_id'])
                serializer.save()
                print(serializer)
            except:
                raise ValidationError(
                    'Failed to add category')
        else:
            raise ValidationError(
                'You do not have access to create categories')


class ProductCategoryDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update product category
    """
    # permission_classes = (IsAuthenticated,)
    serializer_class = ProductCategorySerializer
    queryset = ProductCategory.objects.all()


class BrandList(generics.ListCreateAPIView):
    """
    endpoint for creating product category for each vendor
    """
    # permission_classes = (IsAdmin,)
    serializer_class = BrandSerializer
    queryset = Brand.objects.filter()

    def get_queryset(self):
        queryset = Brand.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                serializer.save()
                print(serializer)
            except:
                raise ValidationError(
                    'Failed to add Brand')
        else:
            raise ValidationError(
                'You do not have access to create Brand')


class BrandDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update product category
    """
    # permission_classes = (IsAuthenticated, )
    serializer_class = BrandSerializer
    queryset = Brand.objects.filter()


class ProductList(generics.ListAPIView):
    """
    endpoint for creating product category
    """
    authentication_classes = (JWTAuthentication,IsAdmin,)
    permission_classes = (IsAuthenticated,)
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



class ProductCreate(APIView):
    """
    endpoint for creating product category
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = ProductSerializer

    def post(self, request, format=None):
        user = self.request.user
        if user.is_admin:
            serializer = ProductSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                product_obj = Product.objects.latest('id')
                return Response(ProductSerializer(product_obj).data, status=status.HTTP_201_CREATED)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            return Response(
                'You do not have access to create product', status=status.HTTP_403_FORBIDDEN
            )

# class ProductCreate(generics.CreateAPIView):
#     """
#     endpoint for creating product category
#     """
#     authentication_classes = (JWTAuthentication,)
#     permission_classes = (IsAuthenticated,)
#     serializer_class = ProductSerializer
#     queryset = Product.objects.filter(is_active=True)

#     def get_queryset(self):
#         queryset = Product.objects.filter(is_active=True)
#         return queryset

#     def perform_create(self, serializer):
#         if self.request.user:
#             serializer = ProductSerializer(data=self.request.data)
#             if serializer.is_valid():
#                 print("serializer valid and this is in if condition")
#                 serializer.save()
#                 product_obj = Product.objects.last()
#                 return Response(
#                     {
#                         'status': 'success',
#                         'message': 'Product added successfully',
#                         'data': ProductSerializer(product_obj).data
#                     },
#                     status=status.HTTP_201_CREATED)
#             else:
#                 print("Failed to add product")
#         else:
#             raise ValidationError(
#                 'You do not have access to create Brand')


class ProductDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update product category
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = ProductSerializer
    queryset = Product.objects.filter(is_active=True)


class ProductSizeVariatList(generics.ListCreateAPIView):
    """
    endpoint for creating product category for product size
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = ProductSizeVariantSerializer
    queryset = ProductSizeVariant.objects.filter()

    def get_queryset(self, *args, **kwargs):
        queryset = ProductSizeVariant.objects.filter(
            product_id=self.kwargs['product_id'])
        return queryset

    def perform_create(self, request, *args, **kwargs):
        # if self.request.user.is_admin:
        if self.request.user:
            value = self.request.data.get('value').split(',')
            print(value)
            for i in value:
                print(i)
                serializer = ProductSizeVariantSerializer(data=request.data)
                if serializer.is_valid():
                    print("serializer valid and this is in if condition")
                    serializer.save(
                        parent_id=self.kwargs['product_id'], product_id=self.kwargs['product_id'], value=i)
                else:
                    print("Failed to add product size")
            product = Product.objects.get(id=self.kwargs['product_id'])
            # product.variant.set(ProductSizeVariant.objects.filter(
            #     parent_id=self.kwargs['product_id']))
            # product.save()
            print(product)
        else:
            raise ValidationError(
                'You do not have access to create product size variant')

            # serializer = ProductSizeVariantSerializer(data=request.data)
            # if serializer.is_valid():
            #     print(serializer.is_valid())
            #     print(self.kwargs['product_id'])
            #     serializer.save()
            #     print(serializer.errors)
            #     print (serializer)
            #     print(serializer.data)
            #     product_id = self.kwargs['product_id']
            #     print(product_id)
            #     product_obj = ProductSizeVariant.objects.last()
            #     print(product_obj)
            #     product_obj.product_id = product_id
            #     product_obj.parent_id = product_id
            #     product_obj.save()
            #     product = Product.objects.get(id=product_id)
            #     product.variant_id = product_obj.id
            #     product.save()
            #     print(product_obj)
            # else:
            #     raise ValidationError(
            #         'Failed to add size')

        # else:
        #     raise ValidationError(
        #         'You do not have access to create size')


class ProductSizeVariantDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update product size
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = ProductSizeVariantSerializer
    queryset = ProductSizeVariant.objects.filter()

class ProductInventoryListDetail(APIView):
    """
    endpoint for creating product category for product Inventory
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = ProductSerializer
    queryset = Product.objects.all()

    def get(self, request):
        product_obj = Product.objects.all()
        product_size_variant = ProductSizeVariant.objects.all()
        serializer = ProductSerializer(product_obj, many=True)
        serializer_size_variant = ProductSizeVariantSerializer(
            product_size_variant, many=True)
        return Response({'product': serializer.data, 'product_size_variant': serializer_size_variant.data})

    def post(self, request, *args, **kwargs):
        add_new = int(request.data.get('quantity'))
        product_id = request.data.get('product_id')
        product_obj = Product.objects.get(id=product_id)
        if request.data.get('variant_id') is not None:
            variant_id = request.data.get('variant_id')
        if variant_id is not None:
            variant_obj = ProductSizeVariant.objects.get(id=variant_id)
            all_variant_with_product = ProductSizeVariant.objects.filter(
                product_id=product_id)
            check_on_hand = available = stock = committed =0
            for i in all_variant_with_product:
                if i.id == variant_id:
                    if i.on_hand is None:
                        i.on_hand = 0
                    if i.available is None:
                        i.available = 0
                    if i.stock is None:
                        i.stock = 0
                    if i.committed is None:
                        i.committed = 0
                    check_on_hand = check_on_hand + int(i.on_hand)
                    available = available + int(i.available)
                    stock = stock + int(i.stock)
                    committed = committed + int(i.committed)
            if check_on_hand == 0 and available == 0:
                product_obj.on_hand = 0
                product_obj.available = 0
                product_obj.committed = 0
                product_obj.save()
            print(type(variant_obj.stock))
            print(type(add_new))
            if variant_obj.stock is None:
                variant_obj.stock = 0
            if variant_obj.committed is None:
                variant_obj.committed = 0
            if variant_obj.on_hand is None:
                variant_obj.on_hand = 0
            if variant_obj.available is None:
                variant_obj.available = 0

            variant_obj.stock = int(variant_obj.stock) + add_new
            variant_obj.on_hand = variant_obj.on_hand + add_new
            variant_obj.available = variant_obj.available + add_new
            variant_obj.committed = 0
            variant_obj.save()
            stock = available = on_hand = 0
            for i in all_variant_with_product:
                if i.id == variant_id and i.product_id == product_id:
                    stock = stock + int(i.stock)
                    available = available + int(i.available)
                    on_hand = on_hand + int(i.on_hand)
            product_obj.stock = stock
            product_obj.available = available
            product_obj.on_hand = on_hand
            product_obj.save()
        elif product_id is not None and variant_id is None:
            product_obj = Product.objects.get(id=product_id)
            product_obj.stock = product_obj.quantity + add_new
            product_obj.on_hand = product_obj.on_hand + add_new
            product_obj.available = product_obj.available + add_new
            product_obj.save()
        serializer = ProductSerializer(Product.objects.all(), many=True)
        serializer_size_variant = ProductSizeVariantSerializer(
            ProductSizeVariant.objects.all(), many=True)
        return Response({'product': serializer.data, 'product_size_variant': serializer_size_variant.data})
        



# class ProductWarrantyUpdate(generics.RetrieveUpdateDestroyAPIView):
#     """
#     endpoint for retrieve update product category
#     """
#     permission_classes = (IsAuthenticated, IsAdmin,)
#     serializer_class = WarrantySerializer
#     queryset = ProductWarranty.objects.all()

class BulkInventoryEntryUpdate(APIView):
    """
    endpoint for bulk inventory entry update
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = BulkInventoryEntrySerializer
    queryset = ProductSizeVariant.objects.all()
    def get(self, request, *args, **kwargs):
        product_obj = Product.objects.all()
        product_size_variant = ProductSizeVariant.objects.all()
        serializer = ProductSerializer(product_obj, many=True)
        serializer_size_variant = ProductSizeVariantSerializer(
            product_size_variant, many=True)
        return Response({'product': serializer.data, 'product_size_variant': serializer_size_variant.data})

    def put(self, request, *args, **kwargs):
        data = request.data
        response = Response()
        response.data = []
        for i in data:
            if i.get('variant_id') is not None and i.get('product_id') is not None:
                raise ValidationError(
                    'You can not update both product and variant at the same time')
            elif i.get('variant_id') is not None:
                variant_id = i.get('variant_id')
                quantity = i.get('add_new')
                variant_obj = ProductSizeVariant.objects.get(id=variant_id)
                check_on_hand = available = stock = committed =0
                print("stock", variant_obj.stock, "on_hand", variant_obj.on_hand, "available", variant_obj.available, "committed", variant_obj.committed)
                variant_obj.stock = variant_obj.stock + quantity
                variant_obj.on_hand = variant_obj.on_hand + quantity
                variant_obj.available = variant_obj.available + quantity
                variant_obj.committed = variant_obj.committed + quantity
                variant_obj.save()
                print("stock", variant_obj.stock, "on_hand", variant_obj.on_hand,
                      "available", variant_obj.available, "committed", variant_obj.committed)
                product_id = variant_obj.product_id
                product_obj = Product.objects.get(id=product_id)
                all_variant_with_product = ProductSizeVariant.objects.filter(
                    product_id=product_id)
                for i in all_variant_with_product:
                    if i.on_hand is None:
                        i.on_hand = 0
                    if i.available is None:
                        i.available = 0
                    if i.stock is None:
                        i.stock = 0
                    if i.committed is None:
                        i.committed = 0

                    check_on_hand = check_on_hand + int(i.on_hand)
                    available = available + int(i.available)
                    stock = stock + int(i.stock)
                    committed = committed + int(i.committed)
                print("stock", product_obj.stock, "available", product_obj.available,
                      "on_hand", product_obj.on_hand, "committed", product_obj.committed)
                product_obj.stock = stock
                product_obj.available = available
                product_obj.on_hand = check_on_hand
                product_obj.committed = committed
                product_obj.save()
                print("stock", product_obj.stock, "available", product_obj.available,
                      "on_hand", product_obj.on_hand, "committed", product_obj.committed)
            elif i.get('product_id') is not None:
                product_id = i.get('product_id')
                product_obj = Product.objects.get(id=product_id)
                print("stock", product_obj.stock, "available", product_obj.available, "on_hand", product_obj.on_hand, "committed", product_obj.committed)
                product_obj.stock = product_obj.stock + i.get('add_new')
                product_obj.on_hand = product_obj.on_hand + i.get('add_new')
                product_obj.available = product_obj.available + i.get('add_new')
                product_obj.committed = product_obj.committed + i.get('add_new')
                product_obj.save()
                print("stock", product_obj.stock, "available", product_obj.available,
                      "on_hand", product_obj.on_hand, "committed", product_obj.committed)
            else:
                raise ValidationError('Please provide variant_id or product_id')
        serializer = ProductSerializer(
            Product.objects.all(), many=True)
        serializer_size_variant = ProductSizeVariantSerializer(
            ProductSizeVariant.objects.all(), many=True)
        return Response({'product': serializer.data, 'product_size_variant': serializer_size_variant.data})

class BulkUpdateProductList(APIView):
    """
    endpoint for bulk update product
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = BulkInventoryEntrySerializer
    queryset = ProductSizeVariant.objects.all()
    def get(self, request, *args, **kwargs):
        product_obj = Product.objects.all()
        product_size_variant = ProductSizeVariant.objects.all()
        serializer = ProductSerializer(product_obj, many=True)
        serializer_size_variant = ProductSizeVariantSerializer(
            product_size_variant, many=True)
        return Response({'product': serializer.data, 'product_size_variant': serializer_size_variant.data})
    def put(self, request, *args, **kwargs):
        data = request.data
        response = Response()
        for i in data:
            print(i)
            variant_id = product_id = name = selling_price = cost_price = compare_at_price = on_sale = barcode = sku = weight = adjust_selling_price = profit_margin = tags = None
            if i.get('variant_id') is not None and i.get('product_id') is not None:
                raise ValidationError(
                    'You can not update both product and variant at the same time')
            if i.get('variant_id') is not None:
                variant_id = i.get('variant_id')
            if i.get('product_id') is not None:
                product_id = i.get('product_id')
            if i.get('name') is not None:
                name = i.get('name')
                print(name)
            if i.get('selling_price') is not None:
                selling_price = i.get('selling_price')
                if selling_price is None or selling_price == '':
                    selling_price = 0
                else:
                    selling_price = float(selling_price)
            if i.get('cost_price') is not None:
                cost_price = i.get('cost_price')
                if cost_price is None or cost_price == '':
                    cost_price = 0
                else:
                    cost_price = float(cost_price)
            if i.get('compare_at_price') is not None:
                compare_at_price = i.get('compare_at_price')
                if compare_at_price is None or compare_at_price == '':
                    compare_at_price = 0
                else:
                    compare_at_price = float(compare_at_price)
            if i.get('on_sale') is not None:
                on_sale = i.get('on_sale')
            if i.get('bar_code') is not None:
                barcode = i.get('bar_code')
            if i.get('sku') is not None:
                sku = i.get('sku')
            if i.get('weight') is not None:
                weight = i.get('weight')
            if i.get('adjust_selling_price') is not None:
                adjust_selling_price = i.get('adjust_selling_price')
                if adjust_selling_price is None or adjust_selling_price == '':
                    adjust_selling_price = 0
                else:
                    adjust_selling_price = float(adjust_selling_price)
            if i.get('profit_margin') is not None:
                profit_margin = i.get('profit_margin')
                if profit_margin is None or profit_margin == '':
                    profit_margin = 0
                else:
                    profit_margin = float(profit_margin)
            if i.get('tags') is not None:
                tags = i.get('tags')
            if product_id is not None:
                obj = Product.objects.get(id=product_id)
            if variant_id is not None:
                obj = ProductSizeVariant.objects.get(id=variant_id)
            if obj is not None:
                if name is not None:
                    obj.name = name
                    print("name", obj.name)
                if selling_price is not None:
                    obj.price = selling_price
                if cost_price is not None:
                    obj.cost_price = cost_price
                if compare_at_price is not None:
                    obj.compare_at_price = compare_at_price
                if on_sale is not None:
                    obj.on_sale = on_sale
                if barcode is not None:
                    obj.barcode = barcode
                if sku is not None:
                    obj.sku = sku
                if weight is not None:
                    obj.weight = weight
                if adjust_selling_price is not None:
                    obj.auto_adjust_selling_price = adjust_selling_price
                if profit_margin is not None:
                    obj.profit_margin = profit_margin
                if tags is not None:
                    obj.tags = tags
                obj.save()
            else:
                raise ValidationError('Product not found')
        serializer = ProductSerializer(
            Product.objects.all(), many=True)
        serializer_size_variant = ProductSizeVariantSerializer(
            ProductSizeVariant.objects.all(), many=True)
        return Response({'product': serializer.data, 'product_size_variant': serializer_size_variant.data})

class InventoryLocationList(generics.ListCreateAPIView):
    """
    endpoint for creating Inventory location
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = InventoryLocationSerializer
    queryset = Inventory_location.objects.filter()

    def get_queryset(self):
        queryset = Inventory_location.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add Inventory location')
        else:
            raise ValidationError(
                'You do not have access to create Inventory location')


class InventoryLocationDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update Inventory location
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = InventoryLocationSerializer
    queryset = Inventory_location.objects.all()


class InventoryTransferList(generics.ListCreateAPIView):
    """
    endpoint for creating Inventory Transfer
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = InventoryTransferSerializer
    queryset = Inventory_transfer.objects.filter()

    def get_queryset(self):
        queryset = Inventory_transfer.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                serializer.save()
                print(serializer)
            except:
                raise ValidationError(
                    'Failed to add Inventory Transfer')
        else:
            raise ValidationError(
                'You do not have access to Inventory Transfer')


class InventoryTransferDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieve update Inventory Transfer
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = InventoryTransferSerializer
    queryset = Inventory_transfer.objects.filter()


def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)
class PurchaseListCreateView(generics.ListCreateAPIView):
    """
    endpoint for creating product category for each vendor
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = ProductPurchasedSerializer

    def get_queryset(self):
        queryset = ProductPurchased.objects.all()
        return queryset

    def perform_create(self, serializer):
        item_sub_total = 0
        grand_total = 0
        total_price = 0
        total_due = 0
        user = self.request.user
        data = serializer.validated_data
        data1 = self.request.data
        print("requested data",data1)
        print("serialized data ",data)
        if user.is_admin:
            item_count = 0
            received_quantity_price = 0
            items = data1['product_purchased_item']
            print("items", items)
            for i in items:
                tax_amount = 0
                print("Inside order loop", i)
                product_code = i['purchased_product']
                variant_id = i['purchased_size']
                quantity = i['order_quantity']
                unit_price = i['unit_price']
                received_quantity = i['received_quantity']
                tax = i['tax']
                if tax is None:
                    tax = 0
                else:
                    tax = float(tax)
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

                    except ProductSizeVariant.DoesNotExist:
                        print("except block")
                        raise ValidationError(
                            '{} is not available'.format(variant_id))

                total_price = float(unit_price) * float(quantity)
                print("total price", total_price)
                if received_quantity is not None:
                    print("second if block")
                    received_quantity_price = float(unit_price) * float(received_quantity)
                    print("total price", received_quantity_price)
                else:
                    print("second else block")
                    received_quantity_price = 0
                tax_amount = tax_amount + float(float(tax) * float(total_price) / 100)
                print("Total Price", total_price)
                item_sub_total += total_price
                item_count = item_count + quantity
                print("Item Count", item_count)
            print("Order Items loop end")
            grand_total = item_sub_total
            total_received_price = received_quantity_price
            print("Due check start")
            if data1['total_payment'] is None:
                total_payment = 0
            else:
                total_payment = float(data1['total_payment'])
            print("Payment", type(total_payment))
            if total_payment > 0 and total_payment <= grand_total:
                print("Payment if block")
                total_due = grand_total - total_payment
                print("Total Due", total_due)
            elif total_payment > grand_total:
                print("Payment else block")
                total_due = 0
                balance = total_payment - grand_total
                print("Balance", balance)
            else:
                print("Payment else block")
                total_due = grand_total
            print("Due check end")
            dt = datetime.datetime.now()
            now = int(dt.strftime("%Y%m%d%H%M%S"))
            order_details = {
                'total_amount': grand_total,
                'num_of_item': item_count,
                'total_due': total_due,
                'total_paid': total_payment,
            }
            try:
                ### product & size quantity need to be updated in this for loop
                for i in items:
                    print("Inside order loop", i)
                try:
                    purchase_date = data1['purchase_date']
                    due_date = data1['due_date']
                    received_note = data1['received_note']
                    reference = data1['reference']
                    rand_number = random_with_N_digits(7)
                    purchase_order_number = 'PO-'+str(rand_number)
                    print("PO Number", purchase_order_number)
                    serializer.save(
                        po_number = purchase_order_number,
                        purchase_date= purchase_date,
                        due_date= due_date,
                        total_amount= grand_total,
                        total_due= total_due,
                        total_payment= total_payment,
                        total_tax= tax_amount,
                        received_quantity_price= 0,
                        received_note= received_note,
                        adjusment= 0,
                        reference= reference
                        )
                    print("Order Save")
                except Exception as e:
                    print("Order Save except")
                    print("e ",e)
                    raise ValidationError('Order Save failed!')
                print("Order Save end")
            except Exception as e:
                print("Order Save except")
                print(e)
                raise ValidationError('Order Save failed!')    
        else:
            raise ValidationError(
                'You do not have access to create Product Purchased')


class PurchaseDetailView(APIView):
    """
    Endpoint for retrieving & updating a purchase history
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = ProductPurchasedSerializer

    def get_object(self, pk):
        try:
            product_purchased = ProductPurchased.objects.get(pk=pk)
            serializer = ProductPurchasedSerializer(product_purchased)
            return serializer.data
        except ProductPurchased.DoesNotExist:
            raise ValidationError('Product Purchased does not exist')

    def get(self, request, pk):
        """
        Retrieve a purchase history
        """
        user = self.request.user
        if user.is_admin:
            product_purchased = self.get_object(pk)
            return Response(product_purchased)
        else:
            raise ValidationError(
                'You do not have access to view Product Purchased')
    
    def put(self, request, pk):
        """
        Update a purchase history
        """
        user = self.request.user
        data = request.data
        if user.is_admin:
            print("Inside put")
            print("data", data)
            product_purchased = self.get_object(pk)
            serializer = ProductPurchasedSerializer(
                product_purchased, data=request.data)
            print("Serializer", serializer.initial_data)
            if serializer.is_valid():
                # print("Serializer", serializer.data)
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            raise ValidationError(
                'You do not have access to update Product Purchased')


# def search_all_product(request):
#     titles = list()
#     page_number = request.GET.get('page_no')
#     if page_number == None or page_number == '':
#         page_number = 1
#     if 'term' in request.GET:
#         # SearchVector search
#         query_raw = (request.GET.get('term'))
#         if query_raw == '' or query_raw is None:
#             qs = Product.objects.all().order_by('-updated')
#         else:
#             search_string = prepare_search_term(query_raw)
#             print(search_string)

#             '''the best one so far'''
#             qs = Product.objects.annotate(
#                 distance=((Coalesce(TrigramDistance(StringAgg('name', delimiter=' '), search_string, weight='D'), 1))
#                           + Coalesce(TrigramDistance(StringAgg('code',
#                                      delimiter=' '), search_string), 1)
#                           + (Coalesce(TrigramDistance(StringAgg('alternative_names',
#                              delimiter=' '), search_string), 1) + 1)
#                           ),
#             ).filter(distance__lt=3.9).order_by('distance')  # [:20]

#         print(qs)

#         '''---------Apply filter criteria-----------'''
#         category_filter = request.GET.get('category')
#         vendor_filter = request.GET.get('v')
#         print(vendor_filter)
#         sort_order = request.GET.get('sort_order')
#         items_per_page = request.GET.get('items_per_page')
#         if not (items_per_page is None or items_per_page == '-1' or items_per_page == ''):
#             items_per_page = 24
#         if not (category_filter is None or category_filter == '-1'):
#             qs = qs.filter(category_id=category_filter)

#         if not (sort_order is None or sort_order == '-1'):
#             qs = qs.all().order_by(sort_order)

#         if not (vendor_filter is None or vendor_filter == '-1'):
#             qs = Product.objects.filter(
#                 vendor__id=vendor_filter).order_by(sort_order)

#         '''------------- pagination -------------'''
#         paginator = Paginator(
#             qs, items_per_page)  # number means items per page
#         try:
#             qs = paginator.page(int(page_number))
#         except PageNotAnInteger:
#             qs = paginator.page(1)
#         except EmptyPage:
#             qs = paginator.page(paginator.num_pages)

#         titles = list()
#         for product in qs:
#             try:
#                 image = product.product_images.all()[0].image.thumbnail.url
#             except:
#                 image = ''
#             p = {
#                 'name': product.name,
#                 'code':  product.code,
#                 'price': product.discounted_price,
#                 'image':  image,
#                 'id':   product.id,
#                 'slug':   product.slug,
#                 'stock_quantity':   product.stock_quantity,
#                 'page_number': page_number,
#                 'number_of_pages': paginator.num_pages
#             }
#             titles.append(p)
#         # titles = [product.title for product in qs]
#     return JsonResponse(titles, safe=False)


# def filter_categorized_product(request, slug):
#     page_number = request.GET.get('page_no')
#     sort_order = request.GET.get('sort_order')
    # min_price = decimal.Decimal(int(request.GET.get('min')))
    # max_price = decimal.Decimal(int(request.GET.get('max')))
    # print("minimum price: {min_price} and maximum price: {max_price}")
    # if page_number == None or page_number == '':
    #     page_number = 1
    # brand_filter = request.GET.get('brand')
    # if slug == 'all':
    #     products = Product.objects.all()
    #     brand = Brand.objects.all()
    # elif ProductCategory.objects.filter(slug=slug).exists():
    #     products = Product.objects.filter(category__slug=slug)
    #     cat = ProductCategory.objects.get(slug=slug)
    #     brand = Brand.objects.filter(type__icontains=cat.name)
    #     print('cat')

    # elif ProductSubCategory.objects.filter(slug=slug).exists():
    #     products = Product.objects.filter(sub_category__slug=slug)
    #     sub_cat = ProductSubCategory.objects.get(slug=slug)
    #     brand = Brand.objects.filter(type__icontains=sub_cat.category.name)
    #     print('sub')
    # elif ProductMiniCategory.objects.filter(slug=slug).exists():
    #     products = Product.objects.filter(mini_category__slug=slug)
    #     mini_cat = ProductMiniCategory.objects.get(slug=slug)
    #     brand = Brand.objects.filter(
    #         type__icontains=mini_cat.sub_category.category.name)
    #     print('mini')
    # else:
    #     products = ''
    #     brand = None
    # if not (sort_order is None or sort_order == '-1'):
    #     qs = products.all().order_by(sort_order)

    # if brand_filter is not None:
    #     query = None
    #     or_query = None
    #     Brand_filter_list = brand_filter.split("_")
    #     print(Brand_filter_list)
    #     if Brand_filter_list == "-1":
    #         Brand_filter_list.clear()
    #     else:
    #         for B_id in Brand_filter_list:
    #             q = qs.filter(Q(brand__id=B_id))
    #             if or_query is None:
    #                 or_query = q
    #             else:
    #                 or_query = or_query | q
    #         if query is None:
    #             query = or_query
    #         else:
    #             query = query & or_query
    #         qs = query
    #         print(qs)

    # '''------------- pagination -------------'''
    # paginator = Paginator(
    #     qs, 20)  # items_per_page replaced by 20 # number means items per page
    # try:
    #     qs = paginator.page(int(page_number))
    # except PageNotAnInteger:
    #     qs = paginator.page(1)
    # except EmptyPage:
    #     qs = paginator.page(paginator.num_pages)

    # titles = list()
    # for product in qs:
    #     try:
    #         image = product.product_images.all()[0].image.thumbnail.url
    #     except:
    #         image = ''
    #     p = {
    #         'name': product.name,
    #         'code':  product.code,
    #         'image':  image,
    #         'id':   product.id,
    #         'slug':   product.slug,
    #         'stock_quantity':   product.stock_quantity,
    #         'discounted_price':   product.discounted_price,
    #         'price':   product.price,
    #         'page_number': page_number,
    #         'number_of_pages': paginator.num_pages
    #     }
    #     titles.append(p)
    # return JsonResponse(titles, safe=False)
# 

# def addcomment(request, id):
#     url = request.META.get('HTTP_REFERER')  # get last url
#    # return HttpResponse(url)
#     if request.method == 'POST':  # check post
#         print('form posted')
#         form = CommentForm(request.POST)

#         print(form)
#         if form.is_valid():
#             data = Comment()  # create relation with model
#             data.subject = form.cleaned_data['subject']
#             data.comment = form.cleaned_data['comment']
#             data.name = form.cleaned_data['name']
#             data.rating = form.cleaned_data['rating']
#             data.ip = request.META.get('REMOTE_ADDR')
#             data.product_id = id
#             current_user = request.user
#             data.user_id = current_user.id
#             data.save()  # save data to table
#             messages.success(
#                 request, "Your comment has ben posted. Thank you for your interest.")
#             return HttpResponseRedirect(url)
#     messages.error(
#         request, "Failed to submit your comment. Make sure that you have submitted all the fields")

#     return HttpResponseRedirect(url)
