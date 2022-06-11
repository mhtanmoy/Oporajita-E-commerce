from django.contrib.auth.models import AbstractUser, BaseUserManager
from django.db import models

from django.utils.translation import gettext_lazy as _


# Create your models here.

class UserManager(BaseUserManager):
    def create_user(self, email):
        if not email:
            raise ValueError('User must have an email address')

        user = self.model(
            email=self.normalize_email(email),
        )
        user.set_password("")
        user.is_customer = True
        user.is_admin = False
        user.is_staff = False
        user.is_superuser = False
        user.is_active = True
        user.save()
        return user

    def create_superuser(self, email, password):
        user = self.create_user(email, password=password)
        user.is_admin = True
        user.is_staff = True
        user.is_superuser = True
        user.is_active = True
        user.save()
        return user
class User(AbstractUser):
    is_customer = models.BooleanField(
        default=False,
        help_text=_('Designates whether the user can log into the customer site.'),
    )
    # is_vendor = models.BooleanField(
    #     default=False,
    #     help_text=_('Designates whether the user can log into the vendor site.'),
    # )
    # is_agent = models.BooleanField(
    #     default=False,
    #     help_text=_('Designates whether the user can log into the agent site.'),
    # )
    is_admin = models.BooleanField(
        default=False,
        help_text=_('Designates whether the user can log into the admin site.'),
    )
    # is_agent = models.BooleanField(
    #     default=False,
    #     help_text=_('Designates whether the user can log into the admin site.'),
    # )
    phone = models.CharField(max_length=20, blank=True, null=True)
    first_name = models.CharField(max_length=100, blank=True, null=True)
    last_name = models.CharField(max_length=100, blank=True, null=True)
    address = models.TextField(blank=True, null=True)

    @property
    def get_full_name(self):
        """
        Return the first_name plus the last_name, with a space in between.
        """
        return self.first_name + ' ' + self.last_name

    # class Meta:
    #     verbose_name = _('user')
    #     verbose_name_plural = _('users')
