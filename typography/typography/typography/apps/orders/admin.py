from django.contrib import admin

from .models import *

admin.site.register(Order)
admin.site.register(Review)
admin.site.register(OrderChatMessage)
admin.site.register(ReviewAnswer)