# -*- coding: utf-8 -*-
# Generated by Django 1.9.9 on 2017-04-03 23:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('devops', '0012_diskused'),
    ]

    operations = [
        migrations.CreateModel(
            name='updateDisk',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Interval', models.CharField(max_length=8, verbose_name='\u81ea\u52a8\u66f4\u65b0\u786c\u76d8\u4f7f\u7528\u7387\u7684\u65f6\u95f4')),
            ],
        ),
    ]
