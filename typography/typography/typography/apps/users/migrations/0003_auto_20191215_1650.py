# Generated by Django 2.2.7 on 2019-12-15 08:50

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('users', '0002_worker_worker_image'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='client',
            name='client_name',
        ),
        migrations.RemoveField(
            model_name='client',
            name='client_password',
        ),
        migrations.AddField(
            model_name='client',
            name='Name',
            field=models.CharField(default='Test', max_length=100, verbose_name='ФИО'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='client',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL),
        ),
    ]
