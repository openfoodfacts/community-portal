from django.contrib import admin 
from api.models import Community_groups

@admin.register(Community_groups)
class GroupsModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'group_name','description','country','category']
