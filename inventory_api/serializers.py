from asyncore import read
from drf_writable_nested.serializers import WritableNestedModelSerializer
from rest_framework import serializers

from .models import *

User = settings.AUTH_USER_MODEL


class PatchModelSerializer(serializers.ModelSerializer):
    def __init__(self, *args, **kwargs):
        kwargs['partial'] = True
        super(PatchModelSerializer, self).__init__(*args, **kwargs)


class SupplierSerializer(serializers.ModelSerializer):
    class Meta:
        model = Supplier
        fields = '__all__'
        read_only_fields = ('id', 'created', 'updated',)


# class ProductMiniCategorySerializer(WritableNestedModelSerializer):
#     sub_category = serializers.PrimaryKeyRelatedField(queryset=ProductSubCategory.objects.all())

#     class Meta:
#         model = ProductMiniCategory
#         fields = '__all__'

#         read_only_fields = (
#             'id',
#             'created',
#             'updated',
#         )
#         depth = 5


# class ProductSubCategorySerializer(WritableNestedModelSerializer):
#     product_minicategory_category = ProductMiniCategorySerializer(many=True, read_only=True)
#     category = serializers.PrimaryKeyRelatedField(queryset=ProductCategory.objects.all())

#     class Meta:
#         model = ProductSubCategory
#         fields = '__all__'

#         read_only_fields = (
#             'id',
#             'created',
#             'updated',

#         )
#         depth = 5
    

class ProductCategorySerializer(serializers.ModelSerializer):
    # product_subcategory_category = ProductSubCategorySerializer(many=True, read_only=True)
    # department = serializers.PrimaryKeyRelatedField(queryset=Departments.objects.all())

    class Meta:
        model = ProductCategory
        fields = '__all__'

        read_only_fields = (
            'id',
            'created',
            'updated',

        )
        depth = 5

class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brand
        fields = '__all__'
        read_only_fields = ('id', 'created','updated',)


# class ProductImageSerializer(serializers.ModelSerializer):
#     product_id = 'product_id'

#     class Meta:
#         model = ProductImages
#         fields = '__all__'
#         read_only_fields = (
#             'id',
#             'product',
#         )


class ProductSizeVariantSerializer(serializers.ModelSerializer):

    class Meta:
        model = ProductSizeVariant
        exclude = ('product', 'parent_id')
        read_only_fields = (
            'id',
            'created',
            'updated',
        )
class ProductSerializer(WritableNestedModelSerializer):
    # image = Base64ImageField()
    category = serializers.PrimaryKeyRelatedField(queryset=ProductCategory.objects.all(), required=False, allow_null=True, allow_empty=True)
    brand = serializers.PrimaryKeyRelatedField(queryset=Brand.objects.all(), required=False, allow_null=True, allow_empty=True)
    variant = ProductSizeVariantSerializer(
        many=True, required=False, allow_null=True, allow_empty=True)
    # product_images = ProductImageSerializer(many=True)

    class Meta:
        model = Product
        fields ='__all__'
        read_only_fields = (
            'id',
            'created',
            'updated',
            'category',
            'brand',
            'variant',
        )
        depth = 5

class BulkInventoryEntrySerializer(serializers.ModelSerializer):
    add_new = serializers.CharField(write_only = True,required=False, allow_blank=True)

    class Meta:
        model = ProductSizeVariant
        fields =(
            'id',
            'product',
            'option',
            'value',
            'cost_price',
            'on_hand',
            'committed',
            'available',
            'stock',
            'add_new',
        )
        read_only_fields = (
            'id',
            'category',
            'brand',
            'variant',
        )
        


# class WarrantySerializer(serializers.ModelSerializer):
#     class Meta:
#         model = ProductWarranty
#         fields = '__all__'
#         read_only_fields = (
#             'id',
#             'slug',
#             # 'vendor'
#         )


# class DiscountSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = PromoCode
#         fields = '__all__'
#         read_only_fields = (
#             'id',
#             'product',
#             'created',
#             'updated',
#             'slug',
#         )


class InventoryLocationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Inventory_location
        fields = '__all__'
        read_only_fields = ('id',
                            'created',
                            'updated',)


class InventoryTransferSerializer(WritableNestedModelSerializer):
    products = serializers.ManyRelatedField(
        child_relation=ProductSerializer(),
        read_only=True,
        allow_empty=True,
        allow_null=True,
    )
    class Meta:
        model = Inventory_transfer
        fields = '__all__'
        read_only_fields = ('id',
                            'created',
                            'updated',)


class ProductPurchasedItemSerializer(serializers.ModelSerializer):

    class Meta:
        model = ProductPurchasedItem
        fields = '__all__'
        read_only_fields = ('id','purchase_item',)
class ProductPurchasedPaymentSerializer(serializers.ModelSerializer):

    class Meta:
        model = ProductPurchasedPayment
        fields = '__all__'
        read_only_fields = ('id',)
class ProductPurchasedSerializer(WritableNestedModelSerializer):
    product_purchased_item = ProductPurchasedItemSerializer(many=True, required=False)
    class Meta:
        model = ProductPurchased
        fields = '__all__'
        read_only_fields = (
            'id',
            'created',
            'updated',
        )



class ProductPurchasedUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductPurchased
        payment = ProductPurchasedPaymentSerializer(many=True)
        fields = '__all__'
        read_only_fields = (
            'id',
        )
# class ProductReviewSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = ProductReview
#         fields = '__all__'
#         read_only_fields = (
#             'id',
#             'created',
#             'updated',
#             'product',
#             'customer',
#             'slug',
#         )

# class CommentSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = ProductReview
#         fields = '__all__'
#         read_only_fields = (
#             'id',
#             'created',
#             'updated',
#             'product',
#             'user',
#         )
