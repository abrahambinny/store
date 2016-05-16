"""

Title       : Article App controller file

Author      : Binny Abraham

Status      : Active

Created     : 20-04-2016

Description : This is the controller part in MVC framework which acts as the bridge between views and models. 

"""

from django.shortcuts import render
from django.http import HttpResponse
from .models import ContentDetail, Category
from datetime import datetime, date
import simplejson 
from django.core import serializers
from django.conf import settings

#index function serves data to index page
def index(request):
    
    category = get_category()
    next_article = get_next_article()
    tody = date.today()
    main_article = []
    other_article = []
    all_articles = ContentDetail.objects.filter(pub_date__lte=tody, active=True).order_by('-pub_date')
    if all_articles:
        main_article = all_articles[0]
        other_article = all_articles.exclude(id=main_article.id)
    context = {'main_article':main_article, 'other_article':other_article, 'next_article':next_article, 'category':category, }
    return render(request, 'article/index.html', context)

#detail function serves data to detail page
def detail(request, article_id):

    category = get_category()
    next_article = get_next_article()

    #article = ContentDetail.objects.filter(id=article_id)
    #if article:
    #    article = article[0]
    context = {'next_article':next_article, "category":category, 'article_id':article_id}
    return render(request, 'article/detail.html', context)

#ajax call response function to fetch the article detail to load the detail component using vue.js
def detail_json(request, article_id):
    data = []
    article = ContentDetail.objects.filter(id=article_id)
    article_lst = []
    if(article):
        article = article[0]
        article_lst.append(article)
        article.image.main_img.name = fetch_img_url(article.image.main_img.name)
        article_lst.append(article.image)
        article.author.author_avatar.name = fetch_img_url(article.author.author_avatar.name)
        article_lst.append(article.author)
        article_lst.append(article.category)
        
        data = serializers.serialize('json', article_lst) 
    return HttpResponse(data, content_type="application/json")

#search functionality which matching article title
def search_json(request):
    data = []
    if request.GET:
        search_term = request.GET['query']
        if search_term != '':
            articles = ContentDetail.objects.values('id','title').filter(title__icontains=search_term)
            data = simplejson.dumps(list(articles))
    return HttpResponse(data, content_type="application/json")

def fetch_img_url(img_path):
    return settings.STATIC_URL+img_path.split(settings.STATIC_URL)[1]

#This function get the categories from db to display in sidebar
def get_category():
    return Category.objects.filter(category_active=True)[:5]
   
#This function fetch random articles to display in next to read section
def get_next_article():
    return ContentDetail.objects.filter(active=True).order_by('?')[:4]

