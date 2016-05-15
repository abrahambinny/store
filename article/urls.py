"""

Title       : Article App urls file

Author      : Binny Abraham

Status      : Active

Created     : 20-04-2016

Description : This file creates url for article app

"""


from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^detail/(?P<article_id>[0-9]+)/$', views.detail, name='detail'),
    url(r'^detail/json/(?P<article_id>[0-9]+)/$', views.detail_json, name='detail_json'),
    url(r'^search/$', views.search_json, name='search_json'),
]

