# Generated by Django 3.2.7 on 2022-06-15 15:44

from django.db import migrations, models
import stdimage.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AdminUser',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, max_length=150, null=True)),
                ('email', models.EmailField(max_length=254)),
                ('mobile', models.CharField(max_length=20)),
                ('status', models.CharField(choices=[('Pending', 'Pending'), ('Canceled', 'Active'), ('Disabled', 'Disabled'), ('Blocked', 'Blocked')], default='Pending', max_length=150)),
                ('role', models.CharField(blank=True, max_length=50, null=True)),
                ('confirmation_sent_at', models.DateTimeField(auto_now=True)),
                ('profile_image', stdimage.models.StdImageField(blank=True, null=True, upload_to='media/images/vendor_images/')),
                ('created', models.DateField(auto_now_add=True)),
                ('updated', models.DateField(auto_now=True)),
            ],
        ),
    ]
