from rest_framework import serializers

from .models import *


class LiveChatSerializer(serializers.ModelSerializer):
    class Meta:
        model = LiveChat
        fields = ('live_chat_link',)
        read_only_fields = ('id', 'created', 'updated')


class GoogleAnalyticSerializer(serializers.ModelSerializer):
    class Meta:
        model = GoogleAnalytic
        fields = ('google_analytics_link',)
        read_only_fields = ('id', 'created', 'updated')


class GoogleADSerializer(serializers.ModelSerializer):
    class Meta:
        model = GoogleAD
        fields = ('google_ads_link',)
        read_only_fields = ('id', 'created', 'updated')


class FacebookPixelSerializer(serializers.ModelSerializer):
    class Meta:
        model = FacebookPixel
        fields = ('facebook_pixel_link',)
        read_only_fields = ('id', 'created', 'updated')


class OrderPlacedFacebookPixelSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderPlacedFacebookPixel
        fields = ('order_placed_facebook_pixel_link',)
        read_only_fields = ('id','created','updated')


class PopupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Popup
        fields = '__all__'
        read_only_fields = ('id',)
class NewsSerializer(serializers.ModelSerializer):
    class Meta:
        model = News
        fields = '__all__'
        read_only_fields = ('id',)


class PromoCodeSerializer(serializers.ModelSerializer):
    class Meta:
        model = PromoCode
        fields = '__all__'
        read_only_fields = (
            'id',
            'created',
            'updated'
        )
