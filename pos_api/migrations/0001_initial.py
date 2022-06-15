# Generated by Django 3.2.7 on 2022-06-15 15:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('inventory_api', '__first__'),
        ('customer_profile_api', '__first__'),
        ('settings_api', '__first__'),
    ]

    operations = [
        migrations.CreateModel(
            name='Outlet',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('outlet_name', models.CharField(max_length=150)),
                ('location_name', models.CharField(blank=True, max_length=150, null=True)),
                ('email', models.EmailField(blank=True, max_length=50, null=True)),
                ('phone', models.CharField(blank=True, max_length=15, null=True)),
                ('receipt_template', models.CharField(blank=True, choices=[('NONE', 'Choose...'), ('POS_RECEIPT', 'POS sales receipt')], default='NONE', max_length=50, null=True)),
                ('email_template', models.CharField(blank=True, choices=[('NONE', 'Choose...'), ('EMAIL_RECEIPT', 'POS sales email receipt')], default='NONE', max_length=50, null=True)),
                ('country_name', models.CharField(blank=True, max_length=100, null=True)),
                ('division', models.CharField(blank=True, max_length=100, null=True)),
                ('postal_code', models.CharField(blank=True, max_length=20, null=True)),
                ('city', models.CharField(blank=True, max_length=50, null=True)),
                ('address1', models.CharField(blank=True, max_length=120, null=True)),
                ('address2', models.CharField(blank=True, max_length=120, null=True)),
                ('full_address', models.CharField(blank=True, max_length=240, null=True)),
                ('slug', models.SlugField(blank=True, null=True, unique=True)),
                ('cash_management', models.BooleanField(default=False)),
                ('is_active', models.BooleanField(default=False)),
                ('is_default', models.BooleanField(default=False)),
                ('is_deleted', models.BooleanField(default=False)),
                ('selected', models.BooleanField(default=False)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
                ('inventory_location', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='inventory_location', to='inventory_api.inventory_location')),
                ('tax', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='outlet_tax_rate', to='settings_api.taxrate')),
            ],
        ),
        migrations.CreateModel(
            name='Register',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=150)),
                ('opened_at', models.DateTimeField(blank=True, null=True)),
                ('closed_at', models.DateTimeField(blank=True, null=True)),
                ('cash_management', models.BooleanField(default=True)),
                ('is_active', models.BooleanField(default=True)),
                ('is_deleted', models.BooleanField(default=False)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
                ('closed_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='register_closed_by', to='customer_profile_api.customerprofile')),
                ('opened_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='register_opened_by', to='customer_profile_api.customerprofile')),
                ('outlet', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='register_outlet', to='pos_api.outlet')),
            ],
        ),
    ]