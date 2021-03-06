"""

Title       : Article App Models file

Author      : Binny Abraham

Status      : Active

Created     : 20-04-2016

Description : This is the models file which handle the tables and data. 

"""


from __future__ import unicode_literals

from django.db import models
from django.conf import settings

img_upload_path = settings.STATICFILES_DIRS[0]+'/upload/'
# Create your models here.

#Content detail table which store the actual data
class ContentDetail(models.Model):
    title = models.CharField(max_length=200, db_index=True)
    author = models.ForeignKey('Author', on_delete=models.CASCADE, db_index=True)
    category = models.ForeignKey('Category', on_delete=models.CASCADE, default='Adventure', db_index=True)
    active = models.BooleanField(default=True, db_index=True)
    image = models.ForeignKey('ImageStore', on_delete=models.CASCADE, db_index=True)
    pub_date = models.DateField(db_index=True)
    description = models.TextField()
    created_date = models.DateTimeField(auto_now_add=True, db_index=True)
    updated_date = models.DateTimeField(auto_now=True, db_index=True)

    def __unicode__(self):
        return unicode(self.title)

#ImageStore model handles all the images in the app which acts as foreign key to ContentDetail
class ImageStore(models.Model):
    img_title = models.CharField(max_length=100, db_index=True)
    hero_img = models.ImageField(upload_to=img_upload_path+'/images/', null=True, blank=True)
    main_img = models.ImageField(upload_to=img_upload_path+'/images/', null=True, blank=True)
    next_img = models.ImageField(upload_to=img_upload_path+'/images/', null=True, blank=True)
    img_desc = models.TextField(null=True, blank=True)
    created_date = models.DateTimeField(auto_now_add=True, db_index=True)
    updated_date = models.DateTimeField(auto_now=True, db_index=True)

    def __unicode__(self):
        return unicode(self.img_title)

#Author models handle the details of the authors of the article which acts as foreign key to ContentDetail
class Author(models.Model):
    author_name = models.CharField(max_length=100, db_index=True)
    author_desc = models.TextField(null=True, blank=True)
    author_avatar = models.ImageField(upload_to=img_upload_path+'/avatar/', null=True, blank=True)
    created_date = models.DateTimeField(auto_now_add=True, db_index=True)
    updated_date = models.DateTimeField(auto_now=True, db_index=True)

    def __unicode__(self):
        return unicode(self.author_name)

#Category models handle the catgories of the articles which acts as foreign key to ContentDetail
class Category(models.Model):
    category_name = models.CharField(max_length=100, db_index=True)
    category_desc = models.TextField(null=True, blank=True)
    category_active = models.BooleanField(default=True, db_index=True)
    category_image = models.ImageField(upload_to=img_upload_path+'/category/', null=True, blank=True)
    created_date = models.DateTimeField(auto_now_add=True, db_index=True)
    updated_date = models.DateTimeField(auto_now=True, db_index=True)
    
    def __unicode__(self):
        return unicode(self.category_name)

