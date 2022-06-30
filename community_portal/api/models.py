from django.db import models


class Community_groups(models.Model):
    group_name = models.CharField(max_length=50)
    description = models.CharField(max_length=250)
    country = models.CharField( max_length=100)
    category = models.CharField(max_length=100)
    created_date = models.DateField(auto_now_add=True)
    

