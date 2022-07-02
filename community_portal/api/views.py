from django.http import Http404
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.decorators import api_view
from django.db.models import Q
from .models import Group
from .serializers import GroupSerializer

class GroupsList(APIView):
    def get(self, request, format=None):
        Groups = Group.objects.all()
        serializer = GroupSerializer(Groups, many=True)
        return Response(serializer.data)

@api_view(['POST'])
def search(request):
    query = request.data.get('query', '')

    if query:
        Groups = Group.objects.filter(Q(name__icontains=query) | Q(description__icontains=query))
        serializer = GroupSerializer(Groups, many=True)
        return Response(serializer.data)
    else:
        return Response({"groups": []})