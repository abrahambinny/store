"""

Title       : Admin controller file

Author      : Binny Abraham

Status      : Active

Created     : 20-04-2016

Description : This file register the models and can customize all the admin functionalites here.

"""

from django.contrib import admin
# Register your models here.
from .models import ContentDetail, ImageStore, Author, Category

class ImageStoreAdmin(admin.ModelAdmin):
    def save_model(self, request, obj, form, change):
        if obj.hero_img:
            obj.hero_img.name = obj.hero_img.name.split('.')[0] + '_hero_' + int(obj.id) + obj.hero_img.name.split('.')[1]
        if obj.main_img:
            obj.main_img.name = obj.main_img.name.split('.')[0] + '_main_' + int(obj.id) + obj.main_img.name.split('.')[1]
        if obj.next_img:
            obj.next_img.name = obj.next_img.name.split('.')[0] + '_next_' + int(obj.id) + obj.next_img.name.split('.')[1]
        obj.save()
admin.site.register(Author)

class AuthorAdmin(admin.ModelAdmin):
    def save_model(self, request, obj, form, change):
        if obj.author_avatar:
            obj.author_avatar = obj.author_avatar.name.split('.')[0] + '_avatar_' + int(obj.id) + obj.author_avatar.name.split('.')[1]
            obj.save()
admin.site.register(ImageStore)
            
class CategoryAdmin(admin.ModelAdmin):
    def save_model(self, request, obj, form, change):
        if obj.category_img:
            obj.category_img = obj.category_img.name.split('.')[0] + '_category_' + int(obj.id) + obj.category_img.name.split('.')[1]
            obj.save()
admin.site.register(Category)
admin.site.register(ContentDetail)
