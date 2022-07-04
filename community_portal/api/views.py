from django.http import Http404
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Group
from rest_framework import status
from rest_framework.generics import ListAPIView
from .serializers import GroupSerializer
from rest_framework.filters import SearchFilter

class GroupsList(ListAPIView):
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    filter_backends = [SearchFilter]
    search_fields = ['^name','^country','^description',]
        

class CreateGroup(APIView):
       def post(self, request, format=None):
        serializer = GroupSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class GroupDetail(APIView):
    def get_object(self, pk):
        try:
            return Group.objects.get(pk=pk)
        except Group.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        Groups = self.get_object(pk)
        serializer = GroupSerializer(Groups, many=False)
        return Response(serializer.data)


class UpdateGroupDetail(APIView):

    def get_object(self, pk):
        try:
            return Group.objects.get(pk=pk)
        except Group.DoesNotExist:
            raise Http404

    def put(self, request, pk, format=None):
        Groups = self.get_object(pk)
        serializer = GroupSerializer(Groups, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        Groups = self.get_object(pk)
        Groups.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
