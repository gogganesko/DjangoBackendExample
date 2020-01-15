from django.contrib import admin

from .models import PrintType, Service, Sale

admin.site.register(PrintType)
admin.site.register(Service)
admin.site.register(Sale)