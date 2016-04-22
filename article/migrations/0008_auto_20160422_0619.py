# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-04-22 06:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('article', '0007_auto_20160421_1245'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='category_active',
            field=models.BooleanField(db_index=True, default=True),
        ),
        migrations.AddField(
            model_name='contentdetail',
            name='active',
            field=models.BooleanField(db_index=True, default=True),
        ),
    ]
