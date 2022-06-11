from re import search
from urllib import response
from django.shortcuts import render
from urllib3 import Retry
# from customer_order_api import serializers
from customer_profile_api.models import CustomerProfile
from rest_framework import exceptions
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework import generics, status
import jwt,datetime

from customer_profile_api.serializers import CustomerProfileSerializer

from .serializers import UserInfoSerializer
from .models import User

# Create your views here.

class LoginView(APIView):
    permission_classes = (AllowAny,)
    def post(self, request):
        email = request.data['email']
        password = request.data['password']
        user = User.objects.get(email=email)
        if user is None:
            raise AuthenticationFailed('User not found!')
        if not user.check_password(password):
            raise AuthenticationFailed('Incorrect password!')
        name = user.first_name + ' ' + user.last_name
        username = user.username
        id = user.id
        refresh_token = RefreshToken.for_user(user)

        response = Response()

        response.data = {
            'refresh': str(refresh_token),
            'access': str(refresh_token.access_token),
            'username': username,
            'name': name,
            'user_id': id,
            'status': 'success'
        }
        return response
        


class UserView(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request):
        user = self.request.user
        user = User.objects.get(email = user.email)
        print(user)
        # serializer = UserInfoSerializer(user)
        message = "Welcome, "+user.first_name+" "+user.last_name+"! You have done a successfull login."
        return Response({
            'message': message
        })


class UserInfoUpdateView(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk):
        user = User.objects.get(pk=pk)
        response = Response()
        response.data = {
            'id': user.id,
            'username': user.username,
            'first_name': user.first_name,
            'last_name': user.last_name,
            'email': user.email,
            'phone': user.phone,
            'address': user.address,
        }
        return response
    def put(self, request, pk):
        user = User.objects.get(pk=pk)
        if user is None:
            raise exceptions.AuthenticationFailed('User not found!')
        if request.data['first_name'] is not None:
            user.first_name = request.data['first_name']
        if request.data['last_name'] is not None:
            user.last_name = request.data['last_name']
        if request.data['phone']:
            user.phone = request.data['phone']
        if request.data['address']:
            user.address = request.data['address']
        user.save()
        return Response({
            'id': user.id,
            'username': user.username,
            'first_name': user.first_name,
            'last_name': user.last_name,
            'email': user.email,
            'phone': user.phone,
            'address': user.address,
        })
        



class ChangePasswordView(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    def put(self, request, pk):
        try:
            user = User.objects.get(pk=pk)
            if user is None:
                raise exceptions.AuthenticationFailed('User not found!')
            print(user)
            new_password = request.data['new_password']
            re_new_password = request.data['retype_new_password']
            if new_password != re_new_password:
                raise exceptions.AuthenticationFailed('Password not match!')
            user.set_password(new_password)
            user.save()
            return Response({
                'message': 'Password changed successfully!',
                'id': user.id,
                'username': user.username,
                'first_name': user.first_name,
                'last_name': user.last_name,
                'email': user.email,
            }) 
        except:
            raise exceptions.AuthenticationFailed('User not found!')


class LogoutView(APIView):
    authenticaiton_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    def post(self, request):
        try:
            refresh_token = request.data['refresh_token']
            token = RefreshToken(refresh_token)
            token.blacklist()
        except Exception as e:
            raise exceptions.AuthenticationFailed('Invalid token')


class RegisterView(generics.CreateAPIView):
    permission_classes = (AllowAny,)
    """
    endpoint for creating customer profile
    """
    serializer_class = CustomerProfileSerializer
    queryset = CustomerProfile.objects.all()

    def post(self, request):
        data = self.request.data
        print(type(data['email']))
        print(data['email'])
        print("data:")
        print(data)
        username = data['email'].split("@")[0]
        user = User.objects.filter(email=data['email']).exists()
        print(user)
        if user is False:
            new_user = User.objects.create(email=data['email'], password=data['password'], username=username, first_name=data['first_name'], last_name=data[
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
                    print("new customer:")
                    print(new_customer)
                    print("customer created with user instance")
                    refresh_token = RefreshToken.for_user(new_user)
                    response = Response()
                    response.data = {
                        'refresh': str(refresh_token),
                        'access': str(refresh_token.access_token),
                        'user_id': new_user.id,
                        'email': new_user.email,
                        'first_name': new_user.first_name,
                        'last_name': new_user.last_name,
                        'phone': new_user.phone,
                        'is_active': new_user.is_active,
                        'is_staff': new_user.is_staff,
                        'is_customer': new_user.is_customer,
                        'is_admin': new_user.is_admin,
                        'date_joined': new_user.date_joined,
                        'last_login': new_user.last_login,
                        'status': 'success'
                    }
                    return response
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
                    refresh_token = RefreshToken.for_user(user)
                    response = Response()
                    response.data = {
                        'refresh': str(refresh_token),
                        'access': str(refresh_token.access_token),
                        'user_id': new_user.id,
                        'email': new_user.email,
                        'first_name': new_user.first_name,
                        'last_name': new_user.last_name,
                        'phone': new_user.phone,
                        'is_active': new_user.is_active,
                        'is_staff': new_user.is_staff,
                        'is_customer': new_user.is_customer,
                        'is_admin': new_user.is_admin,
                        'date_joined': new_user.date_joined,
                        'last_login': new_user.last_login,
                        'status': 'success'
                    }
                    return response
                else:
                    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
