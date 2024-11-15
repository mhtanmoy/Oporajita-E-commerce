# Generated by Django 3.2.7 on 2022-06-15 15:44

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('pos_api', '0001_initial'),
        ('settings_api', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AddField(
            model_name='permissionrole',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='permission_role_user', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='operation',
            name='resource',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='operation', to='settings_api.resource'),
        ),
        migrations.AddField(
            model_name='deliveryarea',
            name='shipping_method',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='rates', to='settings_api.standardshippingmethod'),
        ),
        migrations.AddField(
            model_name='customuser',
            name='operations',
            field=models.ManyToManyField(blank=True, related_name='custom_user_operation', to='settings_api.Operation'),
        ),
        migrations.AddField(
            model_name='customuser',
            name='outlet',
            field=models.ManyToManyField(blank=True, related_name='custom_user_outlet', to='pos_api.Outlet'),
        ),
        migrations.AddField(
            model_name='customuser',
            name='roles',
            field=models.ManyToManyField(blank=True, related_name='custom_user_roles', to='settings_api.Role'),
        ),
        migrations.AddField(
            model_name='customuser',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='custom_user', to=settings.AUTH_USER_MODEL),
        ),
    ]
