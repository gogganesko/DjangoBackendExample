from django.db import models

from users.models import Client, Worker
from services.models import Service
#Proverit` logichno li rasstavlenni spiski!
class Order(models.Model):
	order_date = models.DateTimeField('Дата заказа')
	order_client = models.ForeignKey(Client, on_delete = models.CASCADE, null=True, blank=True)
	order_name = models.CharField('Имя(если не зарегстрирован)', max_length = 50, null = True, blank = True)
	order_email = models.CharField('E-mail(если не зарегстрирован)', max_length = 50, null = True, blank = True)
	order_telephonenumber = models.CharField('Телефон(если не зарегстрирован)', max_length = 50, null = True, blank = True)
	order_state = models.CharField('Статус заказа', max_length = 100)
	order_service = models.ForeignKey(Service, on_delete = models.CASCADE)
	order_price = models.FloatField('Стоимость заказа')
	order_payed = models.FloatField('Оплачено')
	order_worker = models.ManyToManyField(Worker)
	order_count = models.BigIntegerField('Количество')
	order_comment = models.TextField('Комментарий')
	order_image = models.FileField('Дизайн')	

	class Meta:
		verbose_name = 'Заказ'
		verbose_name_plural = 'Заказы'

class OrderChatMessage(models.Model):
	message_date = models.DateTimeField('Дата сообщения')
	message_author = models.CharField('Автор', max_length=100)
	message_order = models.ForeignKey(Order, on_delete = models.CASCADE)
	message_text = models.TextField('Текст сообщения')
	message_image = models.FileField('Картинка', null=True, blank=True)


	class Meta:
		verbose_name = 'Сообщение'
		verbose_name_plural = 'Сообщения'

class Review(models.Model):
	review_pubdate = models.DateTimeField('Дата публикации')
	review_service = models.ForeignKey(Service, on_delete = models.CASCADE)
	review_worker = models.ForeignKey(Worker, on_delete = models.CASCADE)
	review_client = models.ForeignKey(Client, on_delete = models.CASCADE, null = True, blank = True)
	review_name = models.CharField('Имя(если не зарегстрирован)', max_length = 50, null = True, blank = True)
	review_telephonenumber = models.CharField('Номер телефона', max_length = 11)
	review_email = models.EmailField('E-mail')
	review_text = models.TextField('Текст отзыва')
	review_screenshot = models.FileField('Скриншот')
	class Meta:
		verbose_name = 'Отзыв'
		verbose_name_plural = 'Отзывы'		

class ReviewAnswer(models.Model):
	reviewanswer_author = models.ForeignKey(Worker, on_delete = models.CASCADE)
	reviewanswer_review = models.ForeignKey(Review, on_delete = models.CASCADE)
	reviewanswer_text = models.TextField('Текст')

	class Meta:
		verbose_name = 'Ответ'
		verbose_name_plural = 'Ответы'	

