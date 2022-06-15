from settings_api.models import CustomUser
from rest_framework.permissions import BasePermission


class IsCustomer(BasePermission):
    """
    Allows access only to authenticated users as a Customer.
    """

    def has_permission(self, request, view):
        return bool(request.user and request.user.is_customer)


class IsAdmin(BasePermission):
    """
    Allows access only to authenticated users as an Admin.
    """

    def has_permission(self, request, view):
        return bool(request.user and request.user.is_admin)


# class IsVendor(BasePermission):
#     """
#     Allows access only to authenticated users as an Admin or Vendor.
#     """

#     def has_permission(self, request, view):
#         return bool(request.user and request.user.is_vendor)


# class IsVendorOrAdmin(BasePermission):
#     """
#     Allows access only to authenticated users as an Admin or Vendor.
#     """

#     def has_permission(self, request, view):
#         return bool(request.user and (request.user.is_admin or request.user.is_vendor))



class HasPermissionBase(BasePermission):
    """
    Allows access only to users who have the appropriate permission.
    """

    permission_codename = ""

    def has_permission(self, request, view):
        user = request.user
        email = user.email
        check_permission = False
        if user.is_admin:
            print("is admin")
            check_permission = True
        elif CustomUser.objects.filter(email=email).exists():
            print("is user")
            user_status = CustomUser.objects.get(email=email)
            if user_status.operations.filter(name=self.permission_codename):
                check_permission = True
        print("all permissions==> ", self.permission_codename)
        return check_permission
        # return request.user.has_permission(self.permission_codename)


def HasPermission(permission_codename):
    return type('HasPermission', (HasPermissionBase, ), {'permission_codename': permission_codename})
