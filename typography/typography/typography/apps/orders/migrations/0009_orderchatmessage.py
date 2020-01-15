# Generated by Django 2.2.8 on 2019-12-21 12:40

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0007_worker_user'),
        ('orders', '0008_auto_20191221_1742'),
    ]

    operations = [
        migrations.CreateModel(
            name='OrderChatMessage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('message_date', models.DateTimeField(verbose_name='Дата сообщения')),
                ('message_text', models.TextField(verbose_name='Текст сообщения')),
                ('message_client', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.Client')),
                ('message_order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='orders.Order')),
                ('message_worker', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.Worker')),
            ],
            options={
                'verbose_name': 'Сообщение',
                'verbose_name_plural': 'Сообщения',
            },
        ),
    ]
