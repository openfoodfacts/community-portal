from rest_framework import serializers

from .models import Group

class GroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group
        fields = (
            "id",
            "name",
            "creator",
            "get_absolute_url",
            "description",
            "country",
            "get_image",
            "get_thumbnail"
        )