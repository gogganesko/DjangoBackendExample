# Generated by Django 2.2.7 on 2019-12-15 08:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_auto_20191215_1650'),
    ]

    operations = [
        migrations.RenameField(
            model_name='client',
            old_name='Name',
            new_name='client_name',
        ),
    ]
