from rest_framework_simplejwt.authentication import JWTAuthentication
from django.shortcuts import render
from .models import MetaProperty
from company_api.serializers import MetaPropertySerializer
from rest_framework.response import Response
from rest_framework.exceptions import ValidationError
from rest_framework.views import APIView
from rest_framework.permissions import (
    IsAuthenticated,
)
from user_auth.permissions import IsAdmin
# Create your views here.


class MetaPropertyAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated, IsAdmin)

    def get(self, request):
        if MetaProperty.objects.exists():
            general_setting = MetaProperty.objects.first()
            serializer = MetaPropertySerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Meta Information not found")

    def post(self, request):
        serializer = MetaPropertySerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = MetaProperty.objects.first()
                serializer = MetaPropertySerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except MetaProperty.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request, format=None):
        if MetaProperty.objects.exists():
            general_setting = MetaProperty.objects.first()
            serializer = MetaPropertySerializer(
                general_setting, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            else:
                raise ValidationError(serializer.errors)
        else:
            raise ValidationError("General Setting not found")
