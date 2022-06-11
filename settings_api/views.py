from urllib import response
from django.http import Http404
from rest_framework import status
from array import array
from cgi import print_directory
from hashlib import new
from itertools import count
import json
from re import T
from unicodedata import name
from rest_framework import generics
from rest_framework import authentication
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.authentication import BasicAuthentication
from rest_framework.exceptions import ValidationError
from rest_framework.generics import get_object_or_404
from rest_framework.permissions import (
    IsAuthenticated,
    AllowAny
)
from rest_framework_simplejwt.authentication import JWTAuthentication
from user_auth.permissions import IsAdmin
from .serializers import *
from .models import *
# Create your views here.


class GeneralSettingAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        if GeneralSetting.objects.exists():
            general_setting = GeneralSetting.objects.first()
            serializer = GeneralSettingSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("General Setting not found")

    def post(self, request):
        serializer = GeneralSettingSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = GeneralSetting.objects.first()
                serializer = GeneralSettingSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except GeneralSetting.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request, format=None):
        if GeneralSetting.objects.exists():
            general_setting = GeneralSetting.objects.first()
            serializer = GeneralSettingSerializer(
                general_setting, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("General Setting not found")

    def delete(self, request):
        if GeneralSetting.objects.exists():
            general_setting = GeneralSetting.objects.first()
            general_setting.delete()
            return Response(status=204)
        else:
            raise ValidationError("General Setting not found")


class CheckoutSettingAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        if CheckoutSetting.objects.exists():
            general_setting = CheckoutSetting.objects.first()
            serializer = CheckoutSettingSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Checkout Setting not found")

    def post(self, request):
        serializer = CheckoutSettingSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = CheckoutSetting.objects.first()
                serializer = CheckoutSettingSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except CheckoutSetting.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request, format=None):
        if CheckoutSetting.objects.exists():
            general_setting = CheckoutSetting.objects.first()
            serializer = CheckoutSettingSerializer(
                general_setting, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("Checkout Setting not found")


class CheckouFieldtSettingAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        if CheckoutFieldSettings.objects.exists():
            general_setting = CheckoutFieldSettings.objects.first()
            serializer = CheckouFieldtSettingSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Checkout Setting not found")

    def post(self, request):
        serializer = CheckouFieldtSettingSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = CheckoutFieldSettings.objects.first()
                serializer = CheckouFieldtSettingSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except CheckoutFieldSettings.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request, format=None):
        if CheckoutFieldSettings.objects.exists():
            general_setting = CheckoutFieldSettings.objects.first()
            serializer = CheckouFieldtSettingSerializer(
                general_setting, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("Checkout Setting not found")


# Shipping Method API

# Free Shipping
class FreeShippingMethodAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        if FreeShippingMethod.objects.exists():
            general_setting = FreeShippingMethod.objects.first()
            serializer = FreeShippingMethodSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Free Shipping Method not found")

    def post(self, request):
        serializer = FreeShippingMethodSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = FreeShippingMethod.objects.first()
                serializer = FreeShippingMethodSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except FreeShippingMethod.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request, format=None):
        if FreeShippingMethod.objects.exists():
            general_setting = FreeShippingMethod.objects.first()
            serializer = FreeShippingMethodSerializer(
                general_setting, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("Free Shipping Method not found")

# Store Pickup


class StorePickupShippingMethodAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        if StorePickupShippingMethod.objects.exists():
            general_setting = StorePickupShippingMethod.objects.first()
            serializer = StorePickupShippingMethodSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Store Pickup Method not found")

    def post(self, request):
        serializer = StorePickupShippingMethodSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = StorePickupShippingMethod.objects.first()
                serializer = StorePickupShippingMethodSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except StorePickupShippingMethod.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request, format=None):
        if StorePickupShippingMethod.objects.exists():
            general_setting = StorePickupShippingMethod.objects.first()
            serializer = StorePickupShippingMethodSerializer(
                general_setting, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("Store Pickup Method not found")

# standard shipping


class StandardShippingMethodAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        if StandardShippingMethod.objects.exists():
            general_setting = StandardShippingMethod.objects.first()
            serializer = StandardShippingMethodSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Standard Shipping Method not found")

    def post(self, request):
        serializer = StandardShippingMethodSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = StandardShippingMethod.objects.first()
                serializer = StandardShippingMethodSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except StandardShippingMethod.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request, format=None):
        if StandardShippingMethod.objects.exists():
            general_setting = StandardShippingMethod.objects.first()
            serializer = StandardShippingMethodSerializer(
                general_setting, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("Standard Shipping Method not found")


# Delivery Area

class DeliveryAreaAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = DeliveryAreaSerializer

    def get(self, request):
        user = self.request.user
        if user.is_admin:
            delivery_areas = DeliveryArea.objects.all()
            serializer = DeliveryAreaSerializer(delivery_areas, many=True)
            response_body = serializer.data
            new_dic = {}
            new_list = []
            for i in response_body:
                new_dic['rates'] = []
                if i['area1_name'] is not None or i['area1_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area1_name'], 'value': i['area1_price']})
                if i['area2_name'] is not None or i['area2_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area2_name'], 'value': i['area2_price']})
                if i['area3_name'] is not None or i['area3_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area3_name'], 'value': i['area3_price']})
                if i['area4_name'] is not None or i['area4_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area4_name'], 'value': i['area4_price']})
                if i['area5_name'] is not None or i['area5_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area5_name'], 'value': i['area5_price']})
                if i['area6_name'] is not None or i['area6_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area6_name'], 'value': i['area6_price']})
                if i['area7_name'] is not None or i['area7_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area7_name'], 'value': i['area7_price']})
                if i['area8_name'] is not None or i['area8_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area8_name'], 'value': i['area8_price']})
                if i['area9_name'] is not None or i['area9_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area9_name'], 'value': i['area9_price']})
                if i['area10_name'] is not None or i['area10_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area10_name'], 'value': i['area10_price']})
                if i['area11_name'] is not None or i['area11_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area11_name'], 'value': i['area11_price']})
                if i['area12_name'] is not None or i['area12_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area12_name'], 'value': i['area12_price']})
                if i['area13_name'] is not None or i['area13_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area13_name'], 'value': i['area13_price']})
                if i['area14_name'] is not None or i['area14_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area14_name'], 'value': i['area14_price']})
                if i['area15_name'] is not None or i['area15_price'] is not None:
                    new_dic['rates'].append(
                        {'name': i['area15_name'], 'value': i['area15_price']})
                else:

                    ####################### Outside rate list object ##############################
                    # new_dic['id'] = i['id']
                    # new_dic['country'] = i['country']
                    # new_dic['shipping_rate_name'] = i['shipping_rate_name']
                    # new_dic['weight_lower_limit'] = i['weight_lower_limit']
                    # new_dic['weight_upper_limit'] = i['weight_upper_limit']
                    # new_dic['price'] = i['price']
                    # new_dic['shipping_method'] = i['shipping_method']
                    ####################### end 1st format ##############################

                    new_dic['rates'].append({
                        'id': i['id'],
                        'country': i['country'],
                        'shipping_rate_name': i['shipping_rate_name'],
                        'weight_lower_limit': i['weight_lower_limit'],
                        'weight_upper_limit': i['weight_upper_limit'],
                        'price': i['price'],
                        'shipping_method': i['shipping_method'],
                    })
                new_list.append(new_dic)
                new_dic = {}

            return Response(new_list)
        else:
            return Response({"message": "You are not authorized to access this page"})

    def post(self, request):
        user = self.request.user
        if user.is_admin:
            data = request.data
            data_copy = data.copy()
            req_dic = {}
            count = 1
            for key, value in data.items():
                if key == 'rates':
                    for i in value:
                        # print(i.keys())
                        if i.keys() == {'name', 'value'}:
                            data_copy[key][count-1]['area' +
                                                    str(count) + '_name'] = i['name']
                            data_copy[key][count-1]['area' +
                                                    str(count) + '_price'] = i['value']
                            del data_copy[key][count-1]['name']
                            del data_copy[key][count-1]['value']
                            count += 1
                        req_dic.update(i)
                else:
                    data_copy[key] = value
                    req_dic[key] = value
            serializer = DeliveryAreaSerializer(data=req_dic)
            if serializer.is_valid():
                serializer.save()
                response_body = serializer.data
                new_dic = {}
                new_list = []
                new_dic['rates'] = []
                if response_body['area1_name'] is not None or response_body['area1_price'] is not None:
                    new_dic['rates'].append(
                        {'name': response_body['area1_name'], 'value': response_body['area1_price']})
                if response_body['area2_name'] is not None or response_body['area2_price'] is not None:
                    new_dic['rates'].append(
                        {'name': response_body['area2_name'], 'value': response_body['area2_price']})
                if response_body['area3_name'] is not None or response_body['area3_price'] is not None:
                    new_dic['rates'].append(
                        {'name': response_body['area3_name'], 'value': response_body['area3_price']})
                if response_body['area4_name'] is not None or response_body['area4_price'] is not None:
                    new_dic['rates'].append(
                        {'name': response_body['area4_name'], 'value': response_body['area4_price']})
                if response_body['area5_name'] is not None or response_body['area5_price'] is not None:
                    new_dic['rates'].append(
                        {'name': response_body['area5_name'], 'value': response_body['area5_price']})
                # if i['area6_name'] is not None or i['area6_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area6_name'], 'value': i['area6_price']})
                # if i['area7_name'] is not None or i['area7_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area7_name'], 'value': i['area7_price']})
                # if i['area8_name'] is not None or i['area8_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area8_name'], 'value': i['area8_price']})
                # if i['area9_name'] is not None or i['area9_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area9_name'], 'value': i['area9_price']})
                # if i['area10_name'] is not None or i['area10_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area10_name'], 'value': i['area10_price']})
                # if i['area11_name'] is not None or i['area11_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area11_name'], 'value': i['area11_price']})
                # if i['area12_name'] is not None or i['area12_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area12_name'], 'value': i['area12_price']})
                # if i['area13_name'] is not None or i['area13_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area13_name'], 'value': i['area13_price']})
                # if i['area14_name'] is not None or i['area14_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area14_name'], 'value': i['area14_price']})
                # if i['area15_name'] is not None or i['area15_price'] is not None:
                #     new_dic['rates'].append(
                #         {'name': i['area15_name'], 'value': i['area15_price']})
                else:

                    ###################### Outside rate list object ##############################
                    new_dic['id'] = response_body['id']
                    new_dic['country'] = response_body['country']
                    new_dic['shipping_rate_name'] = response_body['shipping_rate_name']
                    new_dic['weight_lower_limit'] = response_body['weight_lower_limit']
                    new_dic['weight_upper_limit'] = response_body['weight_upper_limit']
                    new_dic['price'] = response_body['price']
                    new_dic['shipping_method'] = response_body['shipping_method']
                    ###################### end 1st format ##############################
                    # new_dic['rates'].append({
                    #     'id': response_body['id'],
                    #     'country': response_body['country'],
                    #     'shipping_rate_name': response_body['shipping_rate_name'],
                    #     'weight_lower_limit': response_body['weight_lower_limit'],
                    #     'weight_upper_limit': response_body['weight_upper_limit'],
                    #     'price': response_body['price'],
                    #     'shipping_method': response_body['shipping_method'],
                    # })
                new_list.append(new_dic)

                return Response(new_list)
            else:
                raise ValidationError(serializer.errors)
        else:
            return Response({"message": "You are not authorized to access this page"})
    
    def delete(self, request):
        user = request.user
        if user.is_admin:
            DeliveryArea.objects.all().delete()
            return Response({"message": "All Delivery Area Deleted"})
        else:
            return Response({"message": "You are not authorized to access this page"})


class DeliveryAreaDetailAPI(generics.RetrieveUpdateDestroyAPIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = DeliveryAreaSerializer

    def get(self, request, pk):
        user = self.request.user
        if user.is_admin:
            delivery_area = DeliveryArea.objects.get(pk=pk)
            serializer = DeliveryAreaSerializer(delivery_area)
            return Response(serializer.data)
        else:
            return Response({"message": "You are not authorized to access this page"})

    def put(self, request, pk):
        user = self.request.user
        if user.is_admin:
            delivery_area = DeliveryArea.objects.get(pk=pk)
            serializer = DeliveryAreaSerializer(
                delivery_area, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            return Response({"message": "You are not authorized to access this page"})

    def delete(self, request, pk):
        user = self.request.user
        if user.is_admin:
            if DeliveryArea.objects.filter(pk=pk).exists():
                delivery_area = DeliveryArea.objects.get(pk=pk)
                delivery_area.delete()
                return Response({"message": "Delivery Area deleted successfully"})
            else:
                return Response({"message": "Delivery Area does not exist"})
        else:
            return Response({"message": "You are not authorized to access this page"})

# class StandardShippingMethodAPI(APIView):
#     authentication_classes = (JWTAuthentication,)
#     permission_classes = (IsAuthenticated,)

#     def get(self, request):
#         if StandardShippingMethod.objects.exists():
#             general_setting = StandardShippingMethod.objects.all()
#             serializer = StandardShippingMethodSerializer(general_setting, many=True)
#             new_list = []
#             new_dic = {}
#             for i in serializer.data:
#                 for key, value in i.items():
#                     if key == 'rates':
#                         new_dic[key] = []
#                         for j in value:
#                             # replace area_name with name and area_price with value
#                             if j['area1_name'] and j['area1_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area1_name'], 'value': j['area1_price']})
#                             if j['area2_name'] and j['area2_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area2_name'], 'value': j['area2_price']})
#                             if j['area3_name'] and j['area3_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area3_name'], 'value': j['area3_price']})
#                             if j['area4_name'] and j['area4_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area4_name'], 'value': j['area4_price']})
#                             if j['area5_name'] and j['area5_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area5_name'], 'value': j['area5_price']})
#                             if j['area6_name'] and j['area6_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area6_name'], 'value': j['area6_price']})
#                             if j['area7_name'] and j['area7_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area7_name'], 'value': j['area7_price']})
#                             if j['area8_name'] and j['area8_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area8_name'], 'value': j['area8_price']})
#                             if j['area9_name'] and j['area9_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area9_name'], 'value': j['area9_price']})
#                             if j['area10_name'] and j['area10_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area10_name'], 'value': j['area10_price']})
#                             if j['area11_name'] and j['area11_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area11_name'], 'value': j['area11_price']})
#                             if j['area12_name'] and j['area12_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area12_name'], 'value': j['area12_price']})
#                             if j['area13_name'] and j['area13_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area13_name'], 'value': j['area13_price']})
#                             if j['area14_name'] and j['area14_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area14_name'], 'value': j['area14_price']})
#                             if j['area15_name'] and j['area15_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': j['area15_name'], 'value': j['area15_price']})
#                             new_dic[key].append({
#                                 'id': j['id'],
#                                 'shipping_rate_name': j['shipping_rate_name'],
#                                 'weight_lower_limit': j['weight_lower_limit'],
#                                 'weight_upper_limit': j['weight_upper_limit'],
#                                 'price': j['price'],
#                             })
#                     else:
#                         new_dic[key] = value
#                 new_list.append(new_dic)
#                 new_dic = {}
#             return Response(new_list)
#         else:
#             raise ValidationError("Standard Shipping Method not found")

#     def post(self, request):
#         serializer = StandardShippingMethodSerializer(data=request.data)
#         if serializer.is_valid():
#             try:
#                 data = request.data
#                 data_copy = data.copy()
#                 rate = {}
#                 count = 1
#                 for key, value in data.items():
#                     if key == 'rates':
#                         for i in value:
#                             # print(i.keys())
#                             if i.keys() == {'name', 'value'}:
#                                 data_copy[key][count-1]['area' +
#                                     str(count) + '_name'] = i['name']
#                                 data_copy[key][count-1]['area' +
#                                     str(count) + '_price'] = i['value']
#                                 del data_copy[key][count-1]['name']
#                                 del data_copy[key][count-1]['value']
#                                 count += 1
#                             rate.update(i)
#                     else:
#                         data_copy[key] = value
#                 # print("data ",data)
#                 data_copy['rates'] = [rate]
#                 data = data_copy

#                 serializer = StandardShippingMethodSerializer(data=data)
#                 if serializer.is_valid():
#                     serializer.save()
#                     response = Response()
#                     response_copy = serializer.data
#                     new_dic = {}
#                     for key, value in response_copy.items():
#                         if key == 'rates':
#                             new_dic[key] = []
#                             for i in value:
#                                 # replace area_name with name and area_price with value
#                                 new_dic[key].append({
#                                     'id': i['id'],
#                                     'shipping_rate_name': i['shipping_rate_name'],
#                                     'weight_lower_limit': i['weight_lower_limit'],
#                                     'weight_upper_limit': i['weight_upper_limit'],
#                                     'price': i['price'],
#                                 })
#                                 if i['area1_name'] and i['area1_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area1_name'], 'value': i['area1_price']})
#                                 if i['area2_name'] and i['area2_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area2_name'], 'value': i['area2_price']})
#                                 if i['area3_name'] and i['area3_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area3_name'], 'value': i['area3_price']})
#                                 if i['area4_name'] and i['area4_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area4_name'], 'value': i['area4_price']})
#                                 if i['area5_name'] and i['area5_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area5_name'], 'value': i['area5_price']})
#                                 if i['area6_name'] and i['area6_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area6_name'], 'value': i['area6_price']})
#                                 if i['area7_name'] and i['area7_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area7_name'], 'value': i['area7_price']})
#                                 if i['area8_name'] and i['area8_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area8_name'], 'value': i['area8_price']})
#                                 if i['area9_name'] and i['area9_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area9_name'], 'value': i['area9_price']})
#                                 if i['area10_name'] and i['area10_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area10_name'], 'value': i['area10_price']})
#                                 if i['area11_name'] and i['area11_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area11_name'], 'value': i['area11_price']})
#                                 if i['area12_name'] and i['area12_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area12_name'], 'value': i['area12_price']})
#                                 if i['area13_name'] and i['area13_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area13_name'], 'value': i['area13_price']})
#                                 if i['area14_name'] and i['area14_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area14_name'], 'value': i['area14_price']})
#                                 if i['area15_name'] and i['area15_price'] is not None:
#                                     new_dic[key].append(
#                                         {'name': i['area15_name'], 'value': i['area15_price']})
#                         else:
#                             new_dic[key] = value
#                     response.data = new_dic
#                     return Response(response.data)
#                 else:
#                     raise ValidationError(serializer.errors)
#             except StandardShippingMethod.DoesNotExist:
#                 serializer.save()
#                 return Response(serializer.data)
#         else:
#             raise ValidationError(serializer.errors)

#     def put(self, request, format=None):
#         if StandardShippingMethod.objects.exists():
#             id = request.data['id']
#             general_setting = StandardShippingMethod.objects.get(id=id)
#             data = request.data
#             data_copy = data.copy()
#             rate = {}
#             count = 1
#             for key, value in data.items():
#                 if key == 'rates':
#                     for i in value:
#                         # print(i.keys())
#                         if i.keys() == {'name', 'value'}:
#                             data_copy[key][count-1]['area' +
#                                                     str(count) + '_name'] = i['name']
#                             data_copy[key][count-1]['area' +
#                                                     str(count) + '_price'] = i['value']
#                             del data_copy[key][count-1]['name']
#                             del data_copy[key][count-1]['value']
#                             count += 1
#                         rate.update(i)
#                 else:
#                     data_copy[key] = value
#             # print("data ",data)
#             data_copy['rates'] = [rate]
#             data = data_copy
#             serializer = StandardShippingMethodSerializer(
#                 general_setting, data=data)
#             if serializer.is_valid():
#                 serializer.save()
#                 new_dic = {}
#                 for key, value in serializer.data.items():
#                     if key == 'rates':
#                         new_dic[key] = []
#                         for i in value:
#                             # replace area_name with name and area_price with value
#                             if i['area1_name'] and i['area1_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area1_name'], 'value': i['area1_price']})
#                             if i['area2_name'] and i['area2_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area2_name'], 'value': i['area2_price']})
#                             if i['area3_name'] and i['area3_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area3_name'], 'value': i['area3_price']})
#                             if i['area4_name'] and i['area4_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area4_name'], 'value': i['area4_price']})
#                             if i['area5_name'] and i['area5_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area5_name'], 'value': i['area5_price']})
#                             if i['area6_name'] and i['area6_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area6_name'], 'value': i['area6_price']})
#                             if i['area7_name'] and i['area7_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area7_name'], 'value': i['area7_price']})
#                             if i['area8_name'] and i['area8_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area8_name'], 'value': i['area8_price']})
#                             if i['area9_name'] and i['area9_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area9_name'], 'value': i['area9_price']})
#                             if i['area10_name'] and i['area10_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area10_name'], 'value': i['area10_price']})
#                             if i['area11_name'] and i['area11_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area11_name'], 'value': i['area11_price']})
#                             if i['area12_name'] and i['area12_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area12_name'], 'value': i['area12_price']})
#                             if i['area13_name'] and i['area13_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area13_name'], 'value': i['area13_price']})
#                             if i['area14_name'] and i['area14_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area14_name'], 'value': i['area14_price']})
#                             if i['area15_name'] and i['area15_price'] is not None:
#                                 new_dic[key].append(
#                                     {'name': i['area15_name'], 'value': i['area15_price']})
#                             new_dic[key].append({
#                                 'id': i['id'],
#                                 'shipping_rate_name': i['shipping_rate_name'],
#                                 'weight_lower_limit': i['weight_lower_limit'],
#                                 'weight_upper_limit': i['weight_upper_limit'],
#                                 'price': i['price'],
#                             })
#                     else:
#                         new_dic[key] = value
#                 return Response(new_dic)
#             else:
#                 raise ValidationError(serializer.errors)
#         else:
#             raise ValidationError("Standard Shipping Method not found")
    # def delete(self, request, format=None):
    #     id = request.data.get('id')
    #     area = request.data.get('area')
    #     if area == "country":
    #         try:
    #             shipping_method = StandardShippingMethod.objects.get(id=id)
    #             shipping_method.delete()
    #             return Response(
    #                 {'message': 'Standard Shipping Method deleted successfully'}, status=status.HTTP_200_OK
    #             )
    #         except StandardShippingMethod.DoesNotExist:
    #             return Response(
    #                 {'message': 'Standard Shipping Method not found'}, status=status.HTTP_404_NOT_FOUND
    #             )

    #     elif area == "rate":
    #         try:
    #             deliver_area = DeliveryArea.objects.get(id=id)
    #             deliver_area.delete()
    #             return Response(
    #                 {'message': 'Delivery Area deleted successfully'}, status=status.HTTP_200_OK
    #             )
    #         except DeliveryArea.DoesNotExist:
    #             return Response(
    #                 {'message': 'Delivery Area not found'}, status=status.HTTP_404_NOT_FOUND
    #             )


# class ShippingMethodAPI(generics.CreateAPIView):
#     authentication_classes = (JWTAuthentication,)
#     permission_classes = (IsAuthenticated,)

#     """
#     Create, Retrieve, Update, Delete Shipping Method
#     """
#     # authentication_classes = (BasicAuthentication,)
#     permission_classes = (IsAuthenticated,)
#     serializer_class = ShippingMethodSerializer
#     queryset = FreeShippingMethod.objects.all()

#     def perform_create(self, request):
#         print("Recieved requested data is: ", request.data)
#         data = {
#             'amount_mesurement': request.data['amount_mesurement'],
#             'amount': request.data['amount'],
#             'weight_mesurement': request.data['weight_mesurement'],
#             'weight': request.data['weight'],
#             'free_shipping': request.data['free_shipping'],
#             'store_pickup': request.data['store_pickup'],
#             'standard_shipping': request.data['standard_shipping'],
#             'country': request.data['country'],
#             'shipping_rate_name': request.data['shipping_rate_name'],
#             'weight_lower_limit': request.data['weight_lower_limit'],
#             'weight_upper_limit': request.data['weight_upper_limit'],
#             'price': request.data['price'],
#             'instruction': request.data['instruction'],
#             # 'created': request.data['created'],
#             # 'updated': request.data['updated']
#         }
#         # request.data
#         print("Extracted data for shipping method model: ", data)
#         delivery_info = request.data.pop('delivery_areas')
#         print("After pop: ", delivery_info)
#         delivery_ins = FreeShippingMethod.objects.create(**data)
#         print(delivery_ins)
#         if delivery_ins:
#             delivery_ins2 = DeliveryArea.objects.create(**delivery_info)
#             delivery_ins2.shipping_method = delivery_ins
#             delivery_ins2.save()
#             print(delivery_ins2)
#             return delivery_ins2
#         else:
#             raise ValidationError("Shipping Method not created")


class TaxRateList(generics.ListCreateAPIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    """
    endpoint for creating each tax rate
    """
    # permission_classes = (IsAdmin,)
    serializer_class = TaxRateSerializer
    queryset = TaxRate.objects.filter()

    def get_queryset(self):
        queryset = TaxRate.objects.all()
        return queryset

    def perform_create(self, serializer):
        # if self.request.user.is_admin:
        if self.request.user:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add tax rate')
        else:
            raise ValidationError(
                'You do not have access to create tax rate')


class TaxRateDetail(generics.RetrieveUpdateDestroyAPIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    """
    endpoint for retrieve update delete tax rate
    """
    # permission_classes = (IsAuthenticated,)
    serializer_class = TaxRateSerializer
    queryset = TaxRate.objects.all()
