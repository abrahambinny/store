
from rest_framework import serializers
from .models import ContentDetail, Author, ImageStore, Category

# Serializers define the API representation.
class ImageStoreSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = ImageStore
        fields = ('id', 'img_desc', 'main_img')

class AuthorSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Author
        fields = ('id', 'author_name', 'author_desc', 'author_avatar')

class CategorySerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Category
        fields = ('id', 'category_name', 'category_desc')

class ContentDetailSerializer(serializers.HyperlinkedModelSerializer):

    image = ImageStoreSerializer()
    author = AuthorSerializer()
    category = CategorySerializer()

    class Meta:
        model = ContentDetail
        fields = ('id', 'title', 'pub_date', 'active', 'description', 'image', 'author', 'category')

