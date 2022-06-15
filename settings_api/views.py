import django.apps
import datetime
import jwt
from django.contrib.auth import get_user_model
from cgitb import lookup
from sys import api_version
from urllib import response
from django.http import Http404
from django.urls import reverse
from django.contrib.sites.shortcuts import get_current_site
from rest_framework import status
from array import array
from cgi import print_directory
from hashlib import new
from itertools import count
import json
from re import T
from unicodedata import name
from rest_framework import generics
from django.contrib.auth.base_user import BaseUserManager
from rest_framework import authentication
from rest_framework_simplejwt.tokens import RefreshToken
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
from customer_profile_api.utils import Util
from user_auth.permissions import IsAdmin
from .serializers import *
from .models import *
# Create your views here.


class GeneralSettingAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin)

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
    permission_classes = (IsAuthenticated, IsAdmin)

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
    permission_classes = (IsAuthenticated, IsAdmin)

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
    permission_classes = (IsAuthenticated, IsAdmin)

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
    permission_classes = (IsAuthenticated, IsAdmin)

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
    permission_classes = (IsAuthenticated, IsAdmin)

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
    permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = DeliveryAreaSerializer

    def get(self, request):
        user = self.request.user
        if user.is_admin:
            delivery_areas = DeliveryArea.objects.all()
            serializer = DeliveryAreaSerializer(delivery_areas, many=True)
            response_body = serializer.data

            return Response(response_body)
        else:
            return Response({"message": "You are not authorized to access this page"})

    def post(self, request):
        user = self.request.user
        if user.is_admin:
            data = request.data

            serializer = DeliveryAreaSerializer(data=data)
            if serializer.is_valid():
                serializer.save()

                return Response(
                    serializer.data
                )
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
    permission_classes = (IsAuthenticated, IsAdmin)
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
            data = request.data
            delivery_area = DeliveryArea.objects.get(pk=pk)
            serializer = DeliveryAreaSerializer(delivery_area, data=data)
            # name=()
            # for i in data["regional_details"]:
            #     name += (i["region_name"],)
            #     # print(i.get('region_name'), i.get('region_price'))
            #     if i.get('region_name') is not None and i.get('region_price') is not None:
            #         print("Region name & price is not null")
            #         rd = RegeionalDetails.objects.filter(delivery_area_id=pk)
            #         print(rd)
            #         if rd.exists():
            #             print("Region name & price is already exists")
            #             rd.update(region_name=i.get('region_name'))
            #             rd.update(region_price=i.get('region_price'))
            #             print("Region name & price is updated")
            #         else:
            #             print("Region name & price is not exists")
            #             RegeionalDetails.objects.create(
            #                 region_name=i.get('region_name'), region_price=i.get('region_price'), delivery_area_id=pk)
            #             print("Region name & price is created")
            # # print("Name of region ",name)
            # regionaldetailis = RegeionalDetails.objects.filter(delivery_area_id=pk).exclude(region_name__in=name).delete()
            # print("regionaldetailis",regionaldetailis)
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


class DeliveryAreaCountryDetail(generics.RetrieveUpdateDestroyAPIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = DeliveryAreaSerializer
    lookup_field = 'country'
    queryset = DeliveryArea.objects.all()

    def get_queryset(self):
        return super().get_queryset()

    def get(self, request, country):
        user = self.request.user
        if user.is_admin:
            delivery_area = DeliveryArea.objects.filter(country=country)
            serializer = DeliveryAreaSerializer(delivery_area, many=True)
            return Response(serializer.data)
        else:
            return Response({"message": "You are not authorized to access this page"})

    def delete(self, request, country):
        user = self.request.user
        if user.is_admin:
            if DeliveryArea.objects.filter(country=country).exists():
                delivery_area = DeliveryArea.objects.filter(country=country)
                delivery_area.delete()
                return Response({"message": "Delivery Area deleted successfully"})
            else:
                return Response({"message": "Delivery Area does not exist"})
        else:
            return Response({"message": "You are not authorized to access this page"})


class RegionListAPI(generics.ListAPIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = RegeionalDetailsSerializer

    def get(self, request):
        user = self.request.user
        if user.is_admin:
            regions = RegeionalDetails.objects.all()
            serializer = RegeionalDetailsSerializer(regions, many=True)
            return Response(serializer.data)
        else:
            return Response({"message": "You are not authorized to access this page"})


class TaxRateList(generics.ListCreateAPIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin)
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
    permission_classes = (IsAuthenticated, IsAdmin)
    """
    endpoint for retrieve update delete tax rate
    """
    serializer_class = TaxRateSerializer
    queryset = TaxRate.objects.all()


########### API for custom user permission ##############


class RoleList(generics.ListCreateAPIView):
    """
    Endpoint for creating User Role
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = RoleSerializer
    queryset = Role.objects.all()

    def get_queryset(self):
        queryset = Role.objects.all()
        return queryset

    def perform_create(self, serializer):
        if self.request.user.is_admin:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add role')
        else:
            raise ValidationError(
                'You do not have access to create role')


class RoleDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    Endpoint for updating User Role
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = RoleSerializer
    queryset = Role.objects.all()


class ResourceList(generics.ListCreateAPIView):
    """
    Endpoint for creating Resource
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = ResourceSerializer
    queryset = Resource.objects.all()

    def get_queryset(self):
        queryset = Resource.objects.all()
        return queryset

    def perform_create(self, serializer):
        if self.request.user.is_admin:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add resource')
        else:
            raise ValidationError(
                'You do not have access to create resource')


class ResourceDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    Endpoint for updating Resource
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = ResourceSerializer
    queryset = Resource.objects.all()


class PermissionRoleList(generics.ListCreateAPIView):
    """
    Endpoint for creating Permission Role
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = PermissionRoleSerializer
    queryset = PermissionRole.objects.all()

    def get_queryset(self):
        queryset = PermissionRole.objects.all()
        return queryset

    def perform_create(self, serializer):
        if self.request.user.is_admin:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add permission role')
        else:
            raise ValidationError(
                'You do not have access to create permission role')


class PermissionRoleDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    Endpoint for updating Permission Role
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = PermissionRoleSerializer
    queryset = PermissionRole.objects.all()


class OperationList(generics.ListCreateAPIView):
    """
    Endpoint for creating Operation
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = OperationSerializer
    queryset = Operation.objects.all()

    def get_queryset(self):
        queryset = Operation.objects.all()
        return queryset

    def perform_create(self, serializer):
        if self.request.user.is_admin:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add operation')
        else:
            raise ValidationError(
                'You do not have access to create operation')


class OperationDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    Endpoint for updating Operation
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = OperationSerializer
    queryset = Operation.objects.all()


# end new apis for customer user permission
class CreatePermissionTable(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin)

    def get(self, request):
        if django.apps.apps.get_models():
            for i in django.apps.apps.get_models():
                PermissionTableList.objects.get_or_create(
                    model_name=i.__name__)
            return Response({"message": "Permission table created successfully"})


class CustomUserList(generics.ListCreateAPIView):
    """
    Endpoint for creating User
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = CustomUserSerializer
    queryset = CustomUser.objects.all()

    def get_queryset(self):
        queryset = CustomUser.objects.all()
        return queryset

    def perform_create(self, serializer):
        if self.request.user:
            try:
                email = serializer.validated_data['email']
                print(email)
                try:
                    phone = serializer.validated_data['contact']
                except:
                    phone = None
                print(phone)
                full_name = first_name = last_name = None
                username = email.split('@')[0]
                print(username)
                password = BaseUserManager().make_random_password()
                print(password)
                if CustomUser.objects.filter(email=email).exists():
                    print("email exists")
                    raise ValidationError(
                        'Email already exists')

                elif get_user_model().objects.filter(email=email).exists():
                    print("email exists")
                    try:
                        serializer.save(user=new_user, confirmed_at=None)
                        new_user = get_user_model().objects.get(email=email)
                        setting = GeneralSetting.objects.first()
                        token = RefreshToken.for_user(new_user).access_token
                        current_site = get_current_site(self.request).domain
                        relativeLink = reverse('activate-custom-user-account')
                        activate_url = "{}://{}?token={}".format(
                            current_site, relativeLink, str(token))
                        print(activate_url)
                        email_body = "Welcome " + new_user.email+"!\n\nA Ecommerce Staff account has been created using this email.\n\n"\
                            "To complete the setup of your account please click here. \n\n" +\
                            "If the above link is not clickable, try copying and pasting the link given below into the address bar of your web browser. \n\n" +\
                            activate_url
                        print(email_body)
                        data = {
                            'email_subject': 'New account activation from '+setting.store_name,
                            'email_body': email_body,
                            'email_to': new_user.email,
                        }
                        Util.send_email(data)
                        print("Email sent")
                        print("User saved")
                    except Exception as e:
                        print(e)
                        message = (str(e)).split('string=')[1]
                        message = message.split(',')[0].replace("'", "")
                        raise ValidationError(str(message))
                else:
                    print("email not exists")
                    try:
                        new_user = get_user_model().objects.create_user(
                            email=email,
                            password=password,
                            username=username,
                            phone=phone,
                            first_name=first_name,
                            last_name=last_name,
                            is_admin=False,
                            is_customer=False,
                            is_active=True,
                            is_staff=True,
                            is_superuser=False
                        )
                        new_user.save()
                        print(new_user)
                        try:
                            serializer.save(user=new_user, confirmed_at=None)
                            print("User saved")
                            new_user = get_user_model().objects.get(email=email)
                            setting = GeneralSetting.objects.first()
                            token = RefreshToken.for_user(
                                new_user).access_token
                            current_site = get_current_site(
                                self.request).domain
                            relativeLink = reverse(
                                'activate-custom-user-account')
                            print(relativeLink)
                            activate_url = "{}{}?token={}".format(
                                current_site, relativeLink, str(token))
                            print(activate_url)
                            email_body = "Welcome " + new_user.email+"!\n\nA Ecommerce Staff account has been created using this email.\n\n"\
                                "To complete the setup of your account please click here. \n\n" +\
                                "If the above link is not clickable, try copying and pasting the link given below into the address bar of your web browser. \n\n" +\
                                activate_url
                            print(email_body)
                            data = {
                                'email_subject': 'New account activation from '+setting.store_name,
                                'email_body': email_body,
                                'email_to': new_user.email,
                            }
                            Util.send_email(data)
                            print("Email sent")
                            print("User saved")
                        except Exception as e:
                            print("Exception ==> ", str(e))
                            raise ValidationError(str(e))
                    except Exception as e:
                        print(e)
                        message = (str(e)).split('string=')[1]
                        message = message.split(',')[0].replace("'", "")
                        raise ValidationError(str(message))
            except Exception as e:
                print(e)
                message = (str(e)).split('string=')[1]
                message = message.split(',')[0].replace("'", "")
                raise ValidationError(str(message))
        else:
            raise ValidationError(
                'You do not have access to create user')


class ActivateCustomUserAccount(APIView):
    permission_classes = (AllowAny,)

    def get(self, request):
        print("ActivateCustomUserAccount")
        token = str(self.request.GET.get('token'))
        print(token)
        try:
            payload = jwt.decode(
                token, settings.SECRET_KEY, algorithms=['HS256'])
            user = get_user_model().objects.get(id=payload['user_id'])
            custom_user = CustomUser.objects.get(user=user)
            if not custom_user.confirmed_at:
                print("Confirmed at is None")
                custom_user.confirmed_at = datetime.datetime.now()
                custom_user.confirmation = True
                custom_user.save()
                serializer = CustomUserSerializer(custom_user)
                return Response({'token': str(token), 'user': serializer.data}, status=status.HTTP_200_OK)
            else:
                serializer = CustomUserSerializer(custom_user)
                return Response({'token': str(token), 'user': serializer.data}, status=status.HTTP_200_OK)
        except jwt.ExpiredSignatureError as identifier:
            return Response({'error': 'Activation Expired'}, status=status.HTTP_400_BAD_REQUEST)


class CustomUserDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    Endpoint for updating User
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = CustomUserSerializer
    queryset = CustomUser.objects.all()



from django.contrib.auth import authenticate
class CustomUserPasswordUpdate(APIView):
    """
    Endpoint for updating User
    """
    authentication_classes = (JWTAuthentication,)
    Permission_classes = (IsAuthenticated)
    serializer_class = CustomUserSerializer
    queryset = CustomUser.objects.all()
    def post(self, request, *args, **kwargs):
        print("CustomUserPasswordUpdate")
        user = request.user
        custom_user = CustomUser.objects.get(user=user)
        print(user)
        password = request.data.get('password')
        print(password)
        user.set_password(password)
        custom_user.password = password
        user.save()
        print(user.password)
        custom_user.save()
        serializer = CustomUserSerializer(custom_user)
        token = RefreshToken.for_user(user)
        print(type(token))
        print("logged in")
        if user.first_name is None or user.last_name is None:
            name = user.username
        else:
            name = user.first_name + ' ' + user.last_name
        response = Response()
        response.data = {
            'refresh': str(token),
            'access': str(token.access_token),
            'username': user.username,
            'name': name,
            'user_id': user.id,
            'status': 'success'
        }
        return response

# Payment Method API


class CashonPaymentMethodAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = PaymentMethodSerializer
    queryset = PaymentMethod.objects.all()

    def get(self, request):
        if request.user.is_admin:
            if PaymentMethod.objects.exists():
                payment = PaymentMethod.objects.first()
                serializer = PaymentMethodSerializer(payment)
                return Response(serializer.data)
            else:
                raise ValidationError("Payment Method not found")
        else:
            raise ValidationError("You are not authorized to access this page")

    def post(self, request):
        if request.user.is_admin:
            serializer = PaymentMethodSerializer(data=request.data)
            if serializer.is_valid():
                try:
                    payment = PaymentMethod.objects.first()
                    serializer = PaymentMethodSerializer(
                        payment, data=request.data)
                    if serializer.is_valid():
                        serializer.save()
                        return Response(serializer.data)
                    else:
                        raise ValidationError(serializer.errors)
                except PaymentMethod.DoesNotExist:
                    serializer.save()
                    return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("You are not authorized to access this page")

    def put(self, request, format=None):
        if request.user.is_admin:
            if PaymentMethod.objects.exists():
                payment = PaymentMethod.objects.first()
                serializer = PaymentMethodSerializer(
                    payment, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            else:
                raise ValidationError("Payment Method not found")
        else:
            raise ValidationError("You are not authorized to access this page")
