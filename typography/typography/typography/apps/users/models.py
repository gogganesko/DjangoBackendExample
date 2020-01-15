from django.db import models
from services.models import Service, PrintType
from django.contrib.auth.models import User
# Create your models here.
class ClientType(models.Model):
	clienttype_name = models.CharField('Тип клиента', max_length = 200)

	def __str__(self):
		return self.clienttype_name

	class Meta:
		verbose_name = 'Тип клиента'
		verbose_name_plural = 'Типы клиентов'

class Worker(models.Model):
	user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
	worker_name = models.CharField('ФИО Работника', max_length = 100)
	worker_telephonenumber = models.CharField('Номер телефона', max_length = 11)
	worker_password = models.CharField('Пароль Работника', max_length = 200)
	worker_email = models.EmailField('E-mail')
	worker_birthdaydate = models.DateField('Дата рождения')
	worker_printtype = models.ManyToManyField(PrintType)
	worker_service = models.ManyToManyField(Service)
	worker_image = models.ImageField()
	def __str__(self):
		return self.worker_name

	class Meta:
		verbose_name = 'Работник'
		verbose_name_plural = 'Работники'


class Client(models.Model):
	user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
	client_name = models.CharField('ФИО', max_length = 100)
	client_type = models.ForeignKey(ClientType, on_delete = models.CASCADE)
	client_telephonenumber = models.CharField('Номер телефона', max_length = 11)
	client_email = models.EmailField('E-mail')
	client_birthdaydate = models.DateField('Дата рождения')

	def __str__(self):
		return self.client_name

	class Meta:
		verbose_name = 'Клиент'
		verbose_name_plural = 'Клиенты'		