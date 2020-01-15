from django.urls import path, include

from . import views

app_name = 'main'

urlpatterns = [
	path('', views.index, name = 'index'),
	path('pay', views.pay, name = 'pay'),
	path('contacts', views.contacts, name = 'contacts'),
	path('writeus', views.writeus, name = 'writeus'),
	path('registration', views.registration, name='registration')
]