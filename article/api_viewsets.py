
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

