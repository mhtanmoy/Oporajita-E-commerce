from django.db import models


# Create your models here.
from djrichtextfield.models import RichTextField


    

class TermsCondition(models.Model):
    title = models.CharField(max_length=300, null=True, blank=True)
    content = models.TextField(null=True)
    slug = models.SlugField(null=True, blank=True, unique=True)
    meta_title = models.CharField(max_length=100, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    meta_keywords = models.CharField(max_length=100, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

class AboutUs(models.Model):
    about_us_title = models.CharField(max_length=300, null=True)
    about_us_text = models.TextField(null=True)
    aboutus_image = models.ImageField(
        upload_to="images/static_images/", null=True)
    aboutus_image2 = models.ImageField(
        upload_to="images/static_images/", null=True)
    aboutus_video = models.ImageField(
        upload_to="images/static_images/", null=True)
    aboutus_video2 = models.ImageField(
        upload_to="images/static_images/", null=True)
    meta_title = models.CharField(max_length=100, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    meta_keywords = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return self.about_us_title


class Faq(models.Model):
    question = models.CharField(max_length=200, null=True)
    answer = models.TextField()

    def __str__(self):
        return self.question


class CompanyPolicy(models.Model):
    title = models.CharField(max_length=200, null=True)
    description = RichTextField()

    def __str__(self):
        return self.title

class News(models.Model):
    title = models.CharField(max_length=300, null=True)
    content = models.TextField(null=True)
    image = models.ImageField(
        upload_to="images/news/", null=True)
    image2 = models.ImageField(
        upload_to="images/news/", null=True)
    video = models.ImageField(
        upload_to="images/news/", null=True)
    video2 = models.ImageField(
        upload_to="images/news/", null=True)
    slug = models.SlugField(null=True, blank=True, unique=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

class MetaProperty(models.Model):
    id = models.AutoField(primary_key=True)
    meta_title = models.CharField(max_length=100, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    meta_keywords = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return self.meta_title