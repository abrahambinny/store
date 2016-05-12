"""

Title       : Article App filter file

Author      : Binny Abraham

Status      : Active

Created     : 20-04-2016

Description : This file creates customised filters for django templates


"""


from django import template
register = template.Library()
from django.conf import settings

@register.filter
def fetch_img_url(img_path):
    if(img_path):
        return img_path.split(settings.STATIC_URL)[1]
    else:
        return img_path
    
