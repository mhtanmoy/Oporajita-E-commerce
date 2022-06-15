# Generated by Django 3.2.7 on 2022-06-15 15:43

from django.db import migrations, models
import djrichtextfield.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AboutUs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('about_us_title', models.CharField(max_length=300, null=True)),
                ('about_us_text', models.TextField(null=True)),
                ('aboutus_image', models.ImageField(null=True, upload_to='images/static_images/')),
                ('aboutus_image2', models.ImageField(null=True, upload_to='images/static_images/')),
                ('aboutus_video', models.ImageField(null=True, upload_to='images/static_images/')),
                ('aboutus_video2', models.ImageField(null=True, upload_to='images/static_images/')),
                ('meta_title', models.CharField(blank=True, max_length=100, null=True)),
                ('meta_description', models.CharField(blank=True, max_length=200, null=True)),
                ('meta_keywords', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='CompanyPolicy',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200, null=True)),
                ('description', djrichtextfield.models.RichTextField()),
            ],
        ),
        migrations.CreateModel(
            name='Faq',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.CharField(max_length=200, null=True)),
                ('answer', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='MetaProperty',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('meta_title', models.CharField(blank=True, max_length=100, null=True)),
                ('meta_description', models.CharField(blank=True, max_length=200, null=True)),
                ('meta_keywords', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=300, null=True)),
                ('content', models.TextField(null=True)),
                ('image', models.ImageField(null=True, upload_to='images/news/')),
                ('image2', models.ImageField(null=True, upload_to='images/news/')),
                ('video', models.ImageField(null=True, upload_to='images/news/')),
                ('video2', models.ImageField(null=True, upload_to='images/news/')),
                ('slug', models.SlugField(blank=True, null=True, unique=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='TermsCondition',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=300, null=True)),
                ('content', models.TextField(null=True)),
                ('slug', models.SlugField(blank=True, null=True, unique=True)),
                ('meta_title', models.CharField(blank=True, max_length=100, null=True)),
                ('meta_description', models.CharField(blank=True, max_length=200, null=True)),
                ('meta_keywords', models.CharField(blank=True, max_length=100, null=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
