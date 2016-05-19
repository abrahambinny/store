"""

Title       : Article Django Rest Framework serializers

Author      : Binny Abraham

Status      : Active

Created     : 18-05-2016

Description : This file is used to serialize the data to rest framework api

"""

from rest_framework import serializers
from .models import ContentDetail, Author, ImageStore, Category
from django.conf import settings

# Serializers define the API representation.
class ImageStoreSerializer(serializers.HyperlinkedModelSerializer):

    main_img = serializers.SerializerMethodField('get_main_img_value')

    class Meta:
        model = ImageStore
        fields = ('id', 'img_desc', 'main_img')

    def get_main_img_value(self, obj):
        return fetch_img_url(obj.main_img.name)

class AuthorSerializer(serializers.HyperlinkedModelSerializer):

    author_avatar = serializers.SerializerMethodField('get_avatar')    

    class Meta:
        model = Author
        fields = ('id', 'author_name', 'author_desc', 'author_avatar')

    def get_avatar(self, obj):
        return fetch_img_url(obj.author_avatar.name)

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

def fetch_img_url(img_path):
    return settings.STATIC_URL+img_path.split(settings.STATIC_URL)[1]

