from django.urls import path, include

from api import views

urlpatterns = [
    path('group-list/', views.GroupsList.as_view()),
    path('groups/search/', views.search),
    
]