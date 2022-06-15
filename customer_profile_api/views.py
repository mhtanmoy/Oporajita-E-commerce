import datetime
from hashlib import new
from urllib import request, response
from django.shortcuts import get_object_or_404, render
from django.contrib.auth.base_user import BaseUserManager
import json
from django.http import JsonResponse
# Create your views here.
from rest_framework import generics, status
from rest_framework.exceptions import ValidationError
from rest_framework.response import Response
from rest_framework.settings import perform_import
from rest_framework.views import APIView
import json
from customer_profile_api.utils import Util
from rest_framework.permissions import (
    IsAuthenticated,
)
from rest_framework_simplejwt.authentication import JWTAuthentication
from .serializers import *
from user_auth.serializers import UserInfoSerializer
from user_auth.models import User
from user_auth.permissions import HasPermission


class CustomerList(generics.ListAPIView):
    """
    endpoint for viewing customer list
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = CustomerProfileSerializer

    def get_queryset(self):
        queryset = CustomerProfile.objects.all()
        return queryset


class CustomerProfileCreate(generics.CreateAPIView):
    """
    endpoint for creating customer profile
    """

    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = CustomerProfileSerializer
    queryset = CustomerProfile.objects.all()

    def post(self, request):
        data = self.request.data
        print(type(data['email']))
        print(data['email'])
        print("data:")
        print(data)
        user = User.objects.filter(email=data['email']).exists()
        print(user)
        if user is False:
            username = data['email'].split("@")[0]
            password = BaseUserManager().make_random_password()
            new_user = User.objects.create_user(username=username, email=data['email'], password=password, first_name=data['first_name'], last_name=data[
                                                'last_name'], phone=data['phone'], is_admin=False, is_customer=True, is_active=True, is_staff=False, is_superuser=False)
            if new_user is not None:
                print("user created")
                serializer = CustomerProfileSerializer(data=data)
                if serializer.is_valid():
                    serializer.save()
                    new_customer = CustomerProfile.objects.get(
                        email=data['email'])
                    new_user = User.objects.get(email=data['email'])
                    print(new_user)
                    new_customer.user_id = new_user.id
                    new_customer.username = new_user.username
                    new_customer.password = new_user.password
                    new_customer.save()
                    today = datetime.datetime.now()
                    email_body = "Hi " + new_customer.first_name+' '+new_customer.last_name + ",\n\n" + "An account has been created using this email.\n\n" + "Email: " + \
                        new_customer.email + "\n" + "Password: " + new_customer.password + "\n\n" + \
                        "You can change your password once logged in to the site.\n\n" +\
                        "To log in go to https://aporajitatumi.storrea.com/customers/sign_in/\n\n" +\
                        "For any further query please contact us at or mail us with your query\n\n" +\
                        "Thank you for choosing us.\n\n" + "Regards,\n" + "Aporajita Tumi By Shatabdi\n\n" + \
                        "© "+str(today.year) + \
                        " - Aporajita Tumi By Shatabdi All rights Reserved."
                    data = {
                        'email_subject': 'An account has been created successfully',
                        'email_body': email_body,
                        'email_to': new_customer.email,
                    }
                    Util.send_email(data)
                    print("new customer:")
                    print(new_customer)
                    print("customer created with user instance")
                    return Response(serializer.data, status=status.HTTP_201_CREATED)
                else:
                    print("customer not created")
                    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            customer = CustomerProfile.objects.filter(email=data['email'])
            if customer:
                return Response({"message": "Customer already exists"}, status=status.HTTP_400_BAD_REQUEST)
            else:
                serializer = CustomerProfileSerializer(data=data)
                if serializer.is_valid():
                    serializer.save()
                    new_customer = CustomerProfile.objects.get(
                        email=data['email'])
                    new_user = User.objects.get(email=data['email'])
                    print(new_user)
                    new_customer.user_id = new_user.id
                    new_customer.save()
                    print("new customer:")
                    print(new_customer)
                    print("customer created with user instance")
                    return Response(serializer.data, status=status.HTTP_201_CREATED)
                else:
                    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class CustomerProfileDetails(APIView):
    """
    endpoint for updating or deleting the customer profile
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = CustomerProfileSerializer
    queryset = CustomerProfile.objects.all()

    def get_object(self, pk):
        try:
            return CustomerProfile.objects.get(pk=pk)
        except CustomerProfile.DoesNotExist:
            raise response("CustomerProfile with id: {} does not exist".format(
                pk), status=status.HTTP_404_NOT_FOUND)

    def get(self, request, pk):
        customer = self.get_object(pk)
        serializer = CustomerProfileSerializer(customer)
        return Response(serializer.data)

    def put(self, request, pk):
        customer = self.get_object(pk)
        serializer = CustomerProfileSerializer(customer, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk):
        customer = self.get_object(pk)
        user = User.objects.get(email=customer.email)
        customer.delete()
        user.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


class AddressCreate(generics.CreateAPIView):
    """
    endpoint for creating customer profile
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = AddressSerializer
    queryset = Address.objects.all()
    lookup_field = 'customer'

    def post(self, request, *args, **kwargs):
        data = self.request.data
        data_type = data['type']
        customerdataB = customerdataS = None
        if data_type == "BILLING":
            customerdataB = Address.objects.filter(
                customer=kwargs['customer'], type='BILLING').values('type')
        elif data_type == "SHIPPING":
            customerdataS = Address.objects.filter(
                customer=kwargs['customer'], type='SHIPPING').values('type')
        # if user is superuser
        # if user.is_admin:
        #     raise ValidationError(
        #         'You have no permission to create a customer address'
        #     )
        # else:
        if customerdataB:
            raise ValidationError(
                'Billing Address Already Exists'
            )
        elif customerdataS:
            raise ValidationError(
                'Shipping Address Already Exists'
            )
        else:
            serializer = AddressSerializer(data=data)
            if serializer.is_valid():
                serializer.save()
                customerdata = Address.objects.last()
                customerdata.customer_id = kwargs['customer']
                customerdata.save()
                customer = CustomerProfile.objects.get(id=kwargs['customer'])
                customer.address = customerdata.address1
                customer.save()

                return Response(serializer.data, status=status.HTTP_201_CREATED)
            else:
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class ShippingAddressDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for updating or deleting the customer shipping address
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = AddressUpdateSerializer
    queryset = Address.objects.filter(type='SHIPPING')
    lookup_field = 'customer'


class BillingAddressDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for updating or deleting the customer billing address
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = AddressUpdateSerializer
    queryset = Address.objects.filter(type='BILLING')
    lookup_field = 'customer'


class CustomerGroupList(generics.ListCreateAPIView):
    """
    endpoint for creating customer profile
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = CustomerGroupSerializer
    queryset = CustomerGroup.objects.all()

    def get_queryset(self):
        queryset = CustomerGroup.objects.all()
        return queryset

    def perform_create(self, serializer):

        if serializer.is_valid():
            serializer.save()
        else:
            raise ValidationError(serializer.errors)


class CustomerGroupDetails(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for updating or deleting the customer profile
    """
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, HasPermission('manage_customers'))
    serializer_class = CustomerGroupUpdateSerializer
    queryset = CustomerGroup.objects.all()
