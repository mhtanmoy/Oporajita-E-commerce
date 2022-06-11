# Generated by Django 3.2.7 on 2022-06-11 21:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CheckoutFieldSettings',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('checkout_from_all_country', models.BooleanField(blank=True, default=True, null=True)),
                ('customer_note', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('title', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('first_name', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('last_name', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('email', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('company_name', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('phone', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('billing_address_line1', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('billing_city', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('billing_address_line2', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('billing_country', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('billing_postal_code', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('billing_state', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('defferent_delivery_address', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_name', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_phone', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_address_line1', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_address_line2', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_country', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_city', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_postal_code', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_state', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('delivery_slot', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('time_slot', models.BooleanField(blank=True, default=False, null=True)),
                ('time_slot_label', models.CharField(blank=True, max_length=100, null=True)),
                ('customer_instruction', models.CharField(blank=True, max_length=100, null=True)),
                ('new_time_slot', models.CharField(blank=True, max_length=100, null=True)),
                ('terms_and_condition_show_OR_hidden', models.BooleanField(blank=True, default=False, null=True)),
                ('terms_and_condition', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('terms_and_condition_label', models.CharField(blank=True, max_length=100, null=True)),
                ('terms_and_condition_link', models.URLField(blank=True, max_length=300, null=True)),
                ('terms_and_condition_show_OR_hidden2', models.BooleanField(blank=True, default=False, null=True)),
                ('terms_and_condition2', models.CharField(blank=True, choices=[('OPTIONAL', 'Optional'), ('REQUIRED', 'Required'), ('HIDDEN', 'Hidden')], max_length=100, null=True)),
                ('terms_and_condition_label2', models.CharField(blank=True, max_length=100, null=True)),
                ('terms_and_condition_link2', models.URLField(blank=True, max_length=300, null=True)),
                ('minimum_checkout_amount_setting', models.BooleanField(blank=True, default=False, null=True)),
                ('minimum_checkout_amount', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='CheckoutSetting',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('guest_checkout', models.BooleanField(default=True)),
                ('create_account', models.BooleanField(default=True)),
                ('seperate_delivery_address', models.BooleanField(default=True)),
                ('social_login', models.BooleanField(default=True)),
                ('document_label', models.CharField(blank=True, max_length=100, null=True)),
                ('billing_address_label', models.CharField(blank=True, max_length=100, null=True)),
                ('delivery_address_label', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='FreeShippingMethod',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('amount_mesurement', models.CharField(choices=[('ANY', 'Any'), ('GREATER_THAN', 'Greater than')], default='ANY', max_length=100)),
                ('amount', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('weight_mesurement', models.CharField(choices=[('ANY', 'Any'), ('LESS_THAN', 'Less than')], default='ANY', max_length=100)),
                ('weight', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('free_shipping', models.BooleanField(default=False)),
                ('instruction', models.CharField(blank=True, max_length=300, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='GeneralSetting',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('store_name', models.CharField(max_length=300)),
                ('business_name', models.CharField(blank=True, max_length=300, null=True)),
                ('email', models.EmailField(blank=True, max_length=254, null=True)),
                ('phone', models.CharField(blank=True, max_length=50, null=True)),
                ('street', models.CharField(blank=True, max_length=50, null=True)),
                ('city', models.CharField(blank=True, max_length=50, null=True)),
                ('country', models.CharField(blank=True, max_length=100, null=True)),
                ('division', models.CharField(blank=True, max_length=100, null=True)),
                ('postal_code', models.CharField(blank=True, max_length=50, null=True)),
                ('currency', models.CharField(choices=[('BDT', 'BDT(Bangladeshi taka)'), ('USD', 'USD(United divisions Dollar)')], default='BDT', max_length=100)),
                ('currency_text', models.CharField(blank=True, max_length=100, null=True)),
                ('product_per_page', models.CharField(blank=True, max_length=100, null=True)),
                ('sort_by', models.CharField(choices=[('NEW_PRODUCT', 'Display New Product First'), ('BASED_ON_ORDER', 'Display Based on Customer Order)')], default='NEW_PRODUCT', max_length=300)),
                ('timezone', models.CharField(blank=True, max_length=300, null=True)),
                ('online', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='StandardShippingMethod',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('standard_shipping', models.BooleanField(default=False)),
                ('instruction', models.CharField(blank=True, max_length=300, null=True)),
                ('name', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='StorePickupShippingMethod',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('store_pickup', models.BooleanField(default=False)),
                ('instruction', models.CharField(blank=True, max_length=300, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='TaxRate',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=100, null=True)),
                ('tax', models.DecimalField(blank=True, decimal_places=2, max_digits=5, null=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='DeliveryArea',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('country', models.CharField(blank=True, max_length=100, null=True)),
                ('shipping_rate_name', models.CharField(blank=True, max_length=100, null=True)),
                ('weight_lower_limit', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('weight_upper_limit', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area1_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area1_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area2_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area2_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area3_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area3_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area4_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area4_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area5_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area5_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area6_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area6_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area7_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area7_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area8_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area8_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area9_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area9_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area10_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area10_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area11_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area11_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area12_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area12_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area13_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area13_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area14_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area14_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('area15_name', models.CharField(blank=True, max_length=100, null=True)),
                ('area15_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('shipping_method', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='rates', to='settings_api.standardshippingmethod')),
            ],
        ),
    ]
