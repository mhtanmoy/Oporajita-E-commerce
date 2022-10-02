# Generated by Django 4.1 on 2022-10-02 13:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("customer_order_api", "0001_initial"),
    ]

    operations = [
        migrations.CreateModel(
            name="RegisterModel",
            fields=[
                ("id", models.AutoField(primary_key=True, serialize=False)),
                ("name", models.CharField(max_length=150)),
                ("opened_at", models.DateTimeField(blank=True, null=True)),
                ("closed_at", models.DateTimeField(blank=True, null=True)),
                ("is_active", models.BooleanField(default=True)),
                ("is_deleted", models.BooleanField(default=False)),
                ("status", models.BooleanField(default=True)),
                ("created", models.DateTimeField(auto_now_add=True)),
                ("updated", models.DateTimeField(auto_now=True)),
                (
                    "orders",
                    models.ManyToManyField(
                        blank=True,
                        null=True,
                        related_name="register_orders",
                        to="customer_order_api.order",
                    ),
                ),
            ],
        ),
    ]
