# -*- coding: utf-8 -*-
# Generated by Django 1.9.9 on 2017-03-24 17:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('devops', '0008_runcmdlog'),
    ]

    operations = [
        migrations.AlterField(
            model_name='runcmdlog',
            name='cmdresult',
            field=models.TextField(),
        ),
    ]
