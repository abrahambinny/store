"""

Title       : Article django rest framework view set file

Author      : Binny Abraham

Status      : Active

Created     : 18-05-2016

Description : This is the djnago rest framework view file to push the data to api

"""

from rest_framework import viewsets
from .models import ContentDetail, Author
from .api_serializers import ContentDetailSerializer, AuthorSerializer

# ViewSets define the view behavior.
class ContentDetailViewSet(viewsets.ModelViewSet):
    queryset = ContentDetail.objects.all()
    serializer_class = ContentDetailSerializer

# ViewSets define the view behavior.
class AuthorViewSet(viewsets.ModelViewSet):
    queryset = Author.objects.all()
    serializer_class = AuthorSerializer

