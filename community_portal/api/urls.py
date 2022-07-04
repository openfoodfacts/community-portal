from django.urls import path, include
from rest_framework.urlpatterns import format_suffix_patterns
from api import views

urlpatterns = [
    path('group_list/', views.GroupsList.as_view()),
    path('create_group/', views.CreateGroup.as_view()),
    path('group_details/<int:pk>/', views.GroupDetail.as_view()),
    path('update_group/<int:pk>/', views.UpdateGroupDetail.as_view()),
    
]
urlpatterns = format_suffix_patterns(urlpatterns)
