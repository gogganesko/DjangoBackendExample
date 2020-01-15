from django.urls import path

from . import views

app_name = 'services'

urlpatterns = [
	path('', views.index, name = 'index'),
	path('sales', views.sales, name = 'sales'),
	path('reviews', views.reviews, name = 'reviews'),
	path('newreview', views.newreview, name = 'newreview'),
	path('<int:service_id>/', views.servicedetail, name = 'servicedetail'),
	path('sales/<int:sale_id>', views.saledetail, name = "saledetail"),
	
]