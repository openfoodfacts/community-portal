from django.urls import path
from api import views

urlpatterns = [
    path('',views.getData),
    path('add/',views.addData)
]