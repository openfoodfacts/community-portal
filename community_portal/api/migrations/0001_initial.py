# Generated by Django 4.0.5 on 2022-06-29 10:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Community_groups',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('group_name', models.CharField(max_length=50)),
                ('description', models.CharField(max_length=250)),
                ('country', models.CharField(max_length=100)),
                ('category', models.CharField(max_length=100)),
                ('created_date', models.DateField(auto_now_add=True)),
            ],
        ),
    ]