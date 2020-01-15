from django.http import Http404, HttpResponse, HttpResponseRedirect
from django.shortcuts import render
import datetime
from django.utils import timezone
from datetime import timedelta
from dateutil.relativedelta import relativedelta
from users.models import *
from orders.models import *
from django.contrib.auth.models import User, Group
from .forms import ImageUploadForm 

def orders(request):
	services_list = Service.objects.all()
	defaultdatestart = datetime.datetime.today() - relativedelta(years= 1)
	defaultdateend = datetime.datetime.today()
	client_list = Client.objects.all()

	if request.user.username == 'admin':
		return HttpResponseRedirect('/admin/orders/')
	if request.user.is_authenticated:
		try:
			client = Client.objects.get(user = request.user)
			order_list = client.order_set.all()
			ascordesc = request.GET.get('ascordesc', 'Сначала дешевые')
			orderby = '-order_price'
			service = request.GET.get('service', 'Не выбрано')
			ID = request.GET.get('ID', '')
			if ascordesc == 'Сначала дорогие':
				orderby = orderby
			else:
				orderby = 'order_price'
			if defaultdatestart and defaultdateend:
				order_list = client.order_set.filter(order_date__range = (defaultdatestart, defaultdateend))
			if service != 'Не выбрано':
				order_list = client.order_set.filter(order_service__service_name = service, order_date__range = (defaultdatestart, defaultdateend)).order_by(orderby)
			elif ID != '':
				order_list = client.order_set.filter(id = ID)
			return render(request, 'orders/profile.html', {'order_list':order_list, 'client':client, 'services_list':services_list, 'defaultdatestart':defaultdatestart, 'defaultdateend':defaultdateend})			
	# elif request.user.is_authenticated:
		except:
			worker = Worker.objects.get(user = request.user)
			order_list = worker.order_set.all()
			ascordesc = request.GET.get('ascordesc', 'Сначала дешевые')
			orderby = '-order_price'
			service = request.GET.get('service', 'Не выбрано')
			client = request.GET.get('client', 'Не выбрано')
			ID = request.GET.get('ID', '')
			if ascordesc == 'Сначала дорогие':
				orderby = orderby
			else:
				orderby = 'order_price'
			if defaultdatestart and defaultdateend:
				order_list = worker.order_set.filter(order_date__range = (defaultdatestart, defaultdateend))
			if service != 'Не выбрано':
				order_list = worker.order_set.filter(order_service__service_name = service, order_date__range = (defaultdatestart, defaultdateend)).order_by(orderby)
			elif service != 'Не выбрано' and client != 'Не выбрано':
				order_list = worker.order_set.filter(order_service__service_name = service, order_date__range = (defaultdatestart, defaultdateend), order_client__client_name = client).order_by(orderby)
			elif client != 'Не выбрано':
				order_list = worker.order_set.filter(order_client__client_name = client, order_date__range = (defaultdatestart, defaultdateend)).order_by(orderby)
			elif ID != '':
				order_list = worker.order_set.filter(id = ID)
			return render(request, 'orders/profileworker.html', {'order_list':order_list, 'worker':worker, 'client_list':client_list, 'services_list':services_list, 'defaultdatestart':defaultdatestart, 'defaultdateend':defaultdateend})

	else:
		return HttpResponseRedirect('/accounts/login')

def orderdetail(request, order_id):
	#try: 		
	o = Order.objects.get( id = order_id )
	messages = OrderChatMessage.objects.filter(message_order = o)
	worker_list = o.order_worker
	service = o.order_service
	amount = o.order_price - o.order_payed		
	return render(request, 'orders/order.html', {'o':o, 'amount':amount, 'worker_list':worker_list, 'service':service, 'messages':messages})
	#except:
		#raise Http404("Заказ не найден!")

def neworder(request, service_id):
	if request.user.is_authenticated:
		try:
			if request.user.client:
				service = Service.objects.get( id = service_id)
				if request.method == 'POST':
					client = Client.objects.get(user = request.user)
					service = Service.objects.get( id = service_id)
					worker_list = Worker.objects.filter( worker_printtype = service.service_printtype)
					date = datetime.datetime.today()
					state = "обработка"
					count = request.POST.get('count', '')
					price = service.service_price * int(count)
					payed = 0
					comment = ''
					image = service.service_image
					neworder = Order.objects.create(order_date = date, order_client = client, order_state = state, order_service = service, order_price = price, order_payed = payed, order_count = count, order_comment = comment, order_image = image)
					neworder.save()
					return HttpResponseRedirect('/orders')
				return render(request, 'orders/neworder.html', {'s':service})
		except:
			service = Service.objects.get( id = service_id )
			if request.method == 'POST':
				name = request.POST.get('name')
				email = request.POST.get('email')
				telnum = request.POST.get('telnum')
				service = Service.objects.get( id = service_id)
				worker_list = Worker.objects.filter( worker_printtype = service.service_printtype)
				date = datetime.datetime.today()
				state = "обработка"
				count = request.POST.get('count', '')
				price = service.service_price * int(count)
				payed = 0
				comment = ''
				image = service.service_image
				neworder = Order.objects.create(order_date = date, order_name = name, order_telephonenumber = telnum, order_email = email, order_state = state, order_service = service, order_price = price, order_payed = payed, order_count = count, order_comment = comment, order_image = image)
				neworder.save()
				return render(request, 'orders/unreganswer.html', {'s':service})
			return render(request, 'orders/neworderunregistered.html', {'s':service})
	else:
		service = Service.objects.get( id = service_id )
		if request.method == 'POST':
			name = request.POST.get('name')
			email = request.POST.get('email')
			telnum = request.POST.get('telnum')
			service = Service.objects.get( id = service_id)
			worker_list = Worker.objects.filter( worker_printtype = service.service_printtype)
			date = datetime.datetime.today()
			state = "обработка"
			count = request.POST.get('count', '')
			price = service.service_price * int(count)
			payed = 0
			comment = ''
			image = service.service_image
			neworder = Order.objects.create(order_date = date, order_name = name, order_telephonenumber = telnum, order_email = email, order_state = state, order_service = service, order_price = price, order_payed = payed, order_count = count, order_comment = comment, order_image = image)
			neworder.save()
			return render(request, 'orders/unreganswer.html', {'s':service})
		return render(request, 'orders/neworderunregistered.html', {'s':service})

def newmessage(request, order_id): #date author order text
	if request.method == 'POST':
		order = Order.objects.get(id = order_id)
		date = datetime.datetime.today()
		author = ""
		text = request.POST.get('text')
		try:
			author = request.user.client.client_name
		except:
			author = request.user.worker.worker_name
		message = OrderChatMessage.objects.create(message_date = date, message_order = order, message_author = author, message_text = text)
		message.save()
		return HttpResponseRedirect('/orders/'+ str(order.id))
		#return HttpResponseRedirect('/orders/{order.id}')
	else:
		return HttpResponseRedirect('/orders/'+ str(order.id))
	return HttpResponseRedirect('/orders/'+ str(order.id))
	# order_date = models.DateTimeField('Дата заказа')
	# order_client = models.ForeignKey(Client, on_delete = models.CASCADE)
	# order_state = models.CharField('Статус заказа', max_length = 100)
	# order_service = models.ForeignKey(Service, on_delete = models.CASCADE)
	# order_price = models.FloatField('Стоимость заказа')
	# order_payed = models.FloatField('Оплачено')
	# order_worker = models.ManyToManyField(Worker)
	# order_count = models.BigIntegerField('Количество')
	# order_comment = models.TextField('Комментарий')
	# order_image = models.FileField('Дизайн')	

def upload_pic(request, order_id):
    if request.method == 'POST':
        form = ImageUploadForm(request.POST, request.FILES)
        if form.is_valid():
            m = Order.objects.get(id = order_id)
            m.order_image = form.cleaned_data['image']
            message = OrderChatMessage.objects.create(message_date = datetime.datetime.today(), message_author = 'author', message_order = m, message_text = 'картинка', message_image = m.order_image )
            message.save()
            m.save()
            return HttpResponseRedirect('/orders/'+ str(m.id))
    return HttpResponseForbidden('allowed only via POST')