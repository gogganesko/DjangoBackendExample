# Generated by Django 2.2.7 on 2019-12-10 13:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0002_delete_review'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sale',
            name='sale_image',
            field=models.FilePathField(verbose_name='Изображение'),
        ),
    ]
