# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-06-30 11:26
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('devops', '0017_delete_app'),
    ]

    operations = [
        migrations.AddField(
            model_name='pageinfo',
            name='AppListPage',
            field=models.CharField(max_length=4, null=True),
        ),
    ]
