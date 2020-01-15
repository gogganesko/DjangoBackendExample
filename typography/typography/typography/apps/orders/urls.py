from django.urls import path

from . import views

app_name = 'orders'

urlpatterns = [
	path('', views.orders, name = 'orders'),
	path('<int:order_id>/', views.orderdetail, name = 'orderdetail'),
	path('neworder/<int:service_id>', views.neworder, name = 'neworder'),
	path('newmes/<int:order_id>/', views.newmessage, name = 'newmessage'),
	path('newimg/<int:order_id>/', views.upload_pic, name='upload_pic'),
]