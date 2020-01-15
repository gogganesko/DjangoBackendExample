from django.contrib import admin

from .models import ClientType, Worker, Client

admin.site.register(ClientType)
admin.site.register(Worker)
admin.site.register(Client)
