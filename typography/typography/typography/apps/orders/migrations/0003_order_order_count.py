# Generated by Django 2.2.7 on 2019-12-15 11:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0002_review_reviewanswer'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='order_count',
            field=models.BigIntegerField(default=1, verbose_name='Количество'),
            preserve_default=False,
        ),
    ]
