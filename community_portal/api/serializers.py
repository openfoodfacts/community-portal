from rest_framework import serializers
from api.models import Community_groups

class ItemSerializer(serializers.ModelSerializer):
    class Meta:
        model=Community_groups
        fields='__all__' 