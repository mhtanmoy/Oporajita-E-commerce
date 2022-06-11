
from django.conf import settings
from rest_framework import serializers
User = settings.AUTH_USER_MODEL
from customer_profile_api.models import CustomerProfile


class UserInfoSerializer(serializers.ModelSerializer):
    # full_name = serializers.CharField(source='get_full_name')
    class Meta:
        model = User
        fields = (
            'id',
            'username',
            'first_name',
            'last_name',
            'email',
            'phone',
            'address',
            'password',
            'date_joined',
            'last_login',
            'is_active',
            'is_staff',
            'is_customer',
            'is_admin',
            'phone',
            # 'full_name',
        )

class CustomerSignupSerializer(serializers.ModelSerializer):
    # full_name = serializers.CharField(source='get_full_name')
    class Meta:
        model = CustomerProfile
        exclude = ('user', 'username',)
        read_only_fields = ('id', 'created', 'updated')
