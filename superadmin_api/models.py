from django.db import models
from stdimage import StdImageField
# from customer.models import CustomerProfile
# from delivery_module_api.models import *
from django.conf import settings
# from inventory_api.models import Supplier
# from inventory_api.models import Vendor, Supplier
User = settings.AUTH_USER_MODEL


class AdminUser(models.Model):
    STATUS_CHOICES = (
        ('Pending', 'Pending'),
        ('Canceled', 'Active'),
        ('Disabled', 'Disabled'),
        ('Blocked', 'Blocked'),
    )

    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='admin_user',
        null=True,
        blank=True
    )
    name = models.CharField(max_length=150, null=True, blank=True)
    email = models.EmailField()
    mobile = models.CharField(max_length=20)
    status = models.CharField(
        max_length=150, default='Pending', choices=STATUS_CHOICES,)
    role = models.CharField(max_length=50, null=True, blank=True)
    confirmation_sent_at = models.DateTimeField(auto_now=True)
    profile_image = StdImageField(
        upload_to='media/images/vendor_images/',
        blank=True,
        null=True,
        editable=True,
        variations={'thumbnail': (220, 140)}, delete_orphans=True
    )
    created = models.DateField(auto_now_add=True)
    updated = models.DateField(auto_now=True)

    def __str__(self):
        return self.company_name
