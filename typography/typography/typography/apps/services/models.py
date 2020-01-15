from django.db import models
from django.conf import settings


#from users.models import Client, Worker

#Proverit` logichno li rasstavlenni spiski!

class PrintType(models.Model):
	printtype_name = models.CharField('Название типа печати', max_length = 200)

	def __str__(self):
		return self.printtype_name

	class Meta:
		verbose_name = 'Тип печати'
		verbose_name_plural = 'Типы печати'

class Service(models.Model):
	service_name = models.CharField('Название услуги', max_length = 200)
	service_price = models.FloatField('Цена услуги')
	service_description = models.TextField('Описание услуги')
	service_printtype = models.ForeignKey(PrintType, on_delete = models.CASCADE)
	service_image = models.ImageField()
	def __str__(self):
		return self.service_name

	class Meta:
		verbose_name = 'Услуга'
		verbose_name_plural = 'Услуги'

class Sale(models.Model):
	sale_name = models.CharField('Название акции', max_length = 100)
	sale_datestart = models.DateTimeField('Дата начала')
	sale_dateend = models.DateTimeField('Дата конца')
	sale_description = models.TextField('Описание')
	sale_image = models.ImageField()
	sale_service = models.ManyToManyField(Service)

	def __str__(self):
		return self.sale_name

	class Meta:
		verbose_name = 'Акция'
		verbose_name_plural = 'Акции'		

