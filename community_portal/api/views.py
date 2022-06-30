from rest_framework.response import Response
from api.models import Community_groups
from .serializers import ItemSerializer
from rest_framework.views import APIView
from rest_framework import status
from rest_framework.decorators import api_view


@api_view(['GET'])
def getData(request):
    query = Community_groups.objects.all()
    serializer = ItemSerializer(query,many=True)
    return Response(serializer.data)

@api_view(['POST'])
def addData(request):
    serializer = ItemSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)