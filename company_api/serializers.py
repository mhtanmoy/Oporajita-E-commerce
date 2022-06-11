from rest_framework import serializers

from .models import *


class MetaPropertySerializer(serializers.ModelSerializer):
    class Meta:
        model = MetaProperty
        fields = '__all__'
        read_only_fields = ('id',)
