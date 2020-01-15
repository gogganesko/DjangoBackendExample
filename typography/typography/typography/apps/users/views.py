from django.http import Http404, HttpResponse, HttpResponseRedirect
from django.shortcuts import render
import datetime
from django.utils import timezone
from datetime import timedelta
from dateutil.relativedelta import relativedelta
from users.models import *
from orders.models import *
from django.contrib.auth.models import User, Group 
from django.core.paginator import *
# Create your views here.
def index(request):
	workers_list = Worker.objects.all()
	paginator = Paginator(workers_list, 3)
	try:
		page = int(request.GET.get('page', 1))
	except:
		page = 1
	try:
		workers = paginator.page(page)
	except(EmptyPage, InvalidPage):
		workers = paginator.page(paginator.num_pages)
	return render(request, 'users/list.html', {'workers_list':workers_list, 'workers':workers})


def workerdetail(request, worker_id):
	services_list = Service.objects.all()
	defaultdatestart = datetime.datetime.today() - relativedelta(years= 1)
	defaultdateend = datetime.datetime.today()
	client_list = Client.objects.all()
	worker = Worker.objects.get(id = worker_id)
	order_list = worker.order_set.all()
	ascordesc = request.GET.get('ascordesc', 'Сначала дешевые')
	orderby = '-order_price'
	service = request.GET.get('service', 'Не выбрано')
	client = request.GET.get('client', 'Не выбрано')
	ID = request.GET.get('ID', '')
	sumprice = 0
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
	for o in order_list:
		sumprice = sumprice + o.order_price
	return render(request, 'users/workerdetail.html', {'sumprice':sumprice, 'order_list':order_list, 'worker':worker, 'client_list':client_list, 'services_list':services_list, 'defaultdatestart':defaultdatestart, 'defaultdateend':defaultdateend})

