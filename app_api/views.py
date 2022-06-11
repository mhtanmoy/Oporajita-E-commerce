
from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.authentication import BasicAuthentication
from rest_framework.exceptions import ValidationError
from rest_framework.generics import get_object_or_404
from rest_framework.permissions import (
    IsAuthenticated,
)
from rest_framework_simplejwt.authentication import JWTAuthentication
from user_auth.permissions import IsAdmin
from .serializers import *
# Create your views here.


class LiveChatAPI(APIView):
    serializer_class = LiveChatSerializer

    def get(self, request):
        if LiveChat.objects.exists():
            queryset = LiveChat.objects.first()
            serializer = LiveChatSerializer(queryset)
            return Response(serializer.data)
        else:
            raise ValidationError("Live Chat not found")
    
    def post(self, request):
        serializer = LiveChatSerializer(data=request.data)
        if serializer.is_valid():
            try:
                queryset = LiveChat.objects.first()
                serializer = LiveChatSerializer(
                    queryset, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except LiveChat.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)
    def put(self, request):
        queryset = LiveChat.objects.first()
        serializer = LiveChatSerializer(queryset, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)
    def delete(self, request):
        queryset = LiveChat.objects.first()
        queryset.delete()
        return Response(status=204)


class GoogleAnalyticAPI(APIView):
    serializer_class = GoogleAnalyticSerializer

    def get(self, request):
        if GoogleAnalytic.objects.exists():
            queryset = GoogleAnalytic.objects.first()
            serializer = GoogleAnalyticSerializer(queryset)
            return Response(serializer.data)
        else:
            raise ValidationError("Live Chat not found")

    def post(self, request):
        serializer = GoogleAnalyticSerializer(data=request.data)
        if serializer.is_valid():
            try:
                queryset = GoogleAnalytic.objects.first()
                serializer = GoogleAnalyticSerializer(
                    queryset, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except GoogleAnalytic.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request):
        queryset = GoogleAnalytic.objects.first()
        serializer = GoogleAnalyticSerializer(queryset, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def delete(self, request):
        queryset = GoogleAnalytic.objects.first()
        queryset.delete()
        return Response(status=204)

class GoogleADAPI(APIView):
    serializer_class = GoogleADSerializer

    def get(self, request):
        if GoogleAD.objects.exists():
            queryset = GoogleAD.objects.first()
            serializer = GoogleADSerializer(queryset)
            return Response(serializer.data)
        else:
            raise ValidationError("Live Chat not found")

    def post(self, request):
        serializer = GoogleADSerializer(data=request.data)
        if serializer.is_valid():
            try:
                queryset = GoogleAD.objects.first()
                serializer = GoogleADSerializer(
                    queryset, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except GoogleAD.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request):
        queryset = GoogleAD.objects.first()
        serializer = GoogleADSerializer(queryset, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def delete(self, request):
        queryset = GoogleAD.objects.first()
        queryset.delete()
        return Response(status=204)

class FacebookPixelAPI(APIView):
    serializer_class = FacebookPixelSerializer

    def get(self, request):
        if FacebookPixel.objects.exists():
            queryset = FacebookPixel.objects.first()
            serializer = FacebookPixelSerializer(queryset)
            return Response(serializer.data)
        else:
            raise ValidationError("Live Chat not found")

    def post(self, request):
        serializer = FacebookPixelSerializer(data=request.data)
        if serializer.is_valid():
            try:
                queryset = FacebookPixel.objects.first()
                serializer = FacebookPixelSerializer(
                    queryset, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except FacebookPixel.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request):
        queryset = FacebookPixel.objects.first()
        serializer = FacebookPixelSerializer(queryset, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def delete(self, request):
        queryset = FacebookPixel.objects.first()
        queryset.delete()
        return Response(status=204)

class OrderPlacedFacebookPixelAPI(APIView):
    serializer_class = OrderPlacedFacebookPixelSerializer

    def get(self, request):
        if OrderPlacedFacebookPixel.objects.exists():
            queryset = OrderPlacedFacebookPixel.objects.first()
            serializer = OrderPlacedFacebookPixelSerializer(queryset)
            return Response(serializer.data)
        else:
            raise ValidationError("Live Chat not found")

    def post(self, request):
        serializer = OrderPlacedFacebookPixelSerializer(data=request.data)
        if serializer.is_valid():
            try:
                queryset = OrderPlacedFacebookPixel.objects.first()
                serializer = OrderPlacedFacebookPixelSerializer(
                    queryset, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except OrderPlacedFacebookPixel.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def put(self, request):
        queryset = OrderPlacedFacebookPixel.objects.first()
        serializer = OrderPlacedFacebookPixelSerializer(
            queryset, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)

    def delete(self, request):
        queryset = OrderPlacedFacebookPixel.objects.first()
        queryset.delete()
        return Response(status=204)
class PopupAPI(APIView):
    serializer_class = PopupSerializer
    def get(self, request):
        if Popup.objects.exists():
            general_setting = Popup.objects.first()
            serializer = PopupSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("Popup not found")

    def post(self, request):
        serializer = PopupSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = Popup.objects.first()
                serializer = PopupSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except Popup.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)
    def put(self, request):
        queryset = Popup.objects.first()
        serializer = PopupSerializer(queryset, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)
    def delete(self, request):
        queryset = Popup.objects.first()
        queryset.delete()
        return Response(status=204)


class NewsAPI(APIView):
    authentication_classes = (JWTAuthentication,)
    permission_classes = (IsAuthenticated,)
    serializer_class = NewsSerializer
    def get(self, request):
        if News.objects.exists():
            general_setting = News.objects.first()
            serializer = NewsSerializer(general_setting)
            return Response(serializer.data)
        else:
            raise ValidationError("News not found")

    def post(self, request):
        serializer = NewsSerializer(data=request.data)
        if serializer.is_valid():
            try:
                general_setting = News.objects.first()
                serializer = NewsSerializer(
                    general_setting, data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data)
                else:
                    raise ValidationError(serializer.errors)
            except News.DoesNotExist:
                serializer.save()
                return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)
    def put(self, request):
        serializer = NewsSerializer()
        queryset = News.objects.first()
        serializer = serializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            raise ValidationError(serializer.errors)
    def delete(self, request):
        queryset = News.objects.first()
        queryset.delete()
        return Response(status=204)

class PromoCodeList(generics.ListCreateAPIView):
    """
    endpoint for viewing and creating promo code
    """
    # permission_classes = (IsAuthenticated,IsAdmin,)
    serializer_class = PromoCodeSerializer

    def get_queryset(self):
        user = self.request.user
        queryset = PromoCode.objects.filter()
        return queryset

    def perform_create(self, serializer):
        try:
            serializer.save()
        except:
            raise ValidationError(
                'You do not have access to perform this action')

class PromoCodeDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    endpoint for retrieving updating and deleting promo code
    """
    # permission_classes = (IsAuthenticated, IsAdmin)
    serializer_class = PromoCodeSerializer
    queryset = PromoCode.objects.all()


class PromoCodeData(generics.RetrieveAPIView):
    """
    endpoint for to get data of promo code
    """
    # permission_classes = (IsAuthenticated,)
    serializer_class = PromoCodeSerializer
    queryset = PromoCode.objects.all()
    lookup_fields = ('code')

    def get_object(self):
        code = self.kwargs.get('code')

        try:
            queryset = PromoCode.objects.get(code__iexact=code)
        except PromoCode.DoesNotExist:
            raise ValidationError('This is an invalid promo code')
        return queryset

