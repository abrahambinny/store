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
    article = ContentDetail.objects.filter(id=article_id)
    if article:
        article = article[0]
    context = {"article":article, 'next_article':next_article, "category":category}
    return render(request, 'article/detail.html', context)

#This function get the categories from db to display in sidebar
def get_category():
    return Category.objects.filter(category_active=True)[:5]
   
#This function fetch random articles to display in next to read section
def get_next_article():
    return ContentDetail.objects.filter(active=True).order_by('?')[:4]

