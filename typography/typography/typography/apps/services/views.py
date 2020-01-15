from django.http import Http404, HttpResponseRedirect
from django.shortcuts import render
from services.models import *
from orders.models import *
from users.models import *
from django.core.paginator import *
import datetime
from django.utils import timezone
from datetime import timedelta
from dateutil.relativedelta import relativedelta
from django.contrib.auth.models import User, Group
# Create your views here.
# def index(request):
# 	services_list = Service.objects.all()
	
# 	return render(request, 'services/lists.html', {'services_list':services_list})

def index(request):
	#services_list = Service.objects.all()
	printtypelist = PrintType.objects.all()
	search_query = request.GET.get('searchtext', '')
	search_printtype = request.GET.get('searchprinttype', 'Не выбрано')	
	ascordesc = request.GET.get('searchpriceascdesc', 'Сначала дешевые')
	orderby = '-service_price'
	if ascordesc == 'Сначала дорогие':
		orderby = orderby
	else:
		orderby = 'service_price'
	if search_query:
		services_list = Service.objects.filter(service_name__icontains=search_query).order_by(orderby)
	elif search_printtype != 'Не выбрано':
		services_list = Service.objects.filter(service_printtype__printtype_name = search_printtype).order_by(orderby)
	elif (search_query) and (searchprinttype != 'Не выбрано'):
		services_list = Service.objects.filter(service_name__icontains=search_query, service_printtype = search_printtype).order_by(orderby)
	else:
		services_list = Service.objects.all().order_by(orderby)
	paginator = Paginator(services_list, 3)

	try:
		page = int(request.GET.get('page', 1))
	except:
		page = 1

	try:
		services = paginator.page(page)

	except(EmptyPage, InvalidPage):
		services = paginator.page(paginator.num_pages)
		
	return render(request, 'services/lists.html', {'services_list':services_list, 'services':services, 'printtypelist':printtypelist, 'search_query':search_query, 'search_printtype':search_printtype, 'ascordesc':ascordesc})

def sales(request):
    sales_list = Sale.objects.all()
    paginator = Paginator(sales_list, 3)
    try:
    	page = int(request.GET.get('page', 1))
    except:
    	page = 1
    try:
    	sales = paginator.page(page)
    except(EmptyPage, InvalidPage):
    	sales = paginator.page(paginator.num_pages)
    return render(request, 'services/listsales.html', {'sales_list':sales_list, 'sales':sales})

def reviews(request):
	defaultdatestart = datetime.datetime.today() - relativedelta(years= 1)
	defaultdateend = datetime.datetime.today()
	reviews_list = Review.objects.all()
	printtypelist = PrintType.objects.all()
	datestart = request.GET.get('datestartinp', defaultdatestart)
	dateend = request.GET.get('dateendinp', defaultdateend)
	#search_printtype = request.GET.get('searchprinttype', 'Не выбрано')	
	#ascordesc = request.GET.get('searchpriceascdesc', 'Сначала дешевые')
	#orderby = '-review_service.service_price'
	# if search_printtype != 'Не выбрано':
	#  	reviews_list = Review.objects.filter(service_printtype = search_printtype)
	if datestart and dateend:
		reviews_list = Review.objects.filter(review_pubdate__range = (datestart, dateend))
	paginator = Paginator(reviews_list, 3)
			
	try:
		page = int(request.GET.get('page',1))
	except:
		page = 1
	try:
		reviews = paginator.page(page)
	except(EmptyPage, InvalidPage):
		reviews = paginator.page(paginator.num_pages)
	return render(request, 'services/reviewslist.html', {'reviews_list':reviews_list, 'reviews':reviews, 'printtypelist':printtypelist, 'defaultdateend':defaultdateend, 'defaultdatestart':defaultdatestart})

def servicedetail(request, service_id):
	#try: 		
		s = Service.objects.get( id = service_id )		
		sameservices_list = Service.objects.filter( service_printtype = s.service_printtype )
		servicereviews_list = Review.objects.filter(review_service = s)
		return render(request, 'services/service.html', {'s':s, 'sameservices_list':sameservices_list, 'servicereviews_list': servicereviews_list})
	#except:
		#raise Http404("Услуга не найдена!")


def saledetail(request, sale_id):
	try: 		
		s = Sale.objects.get( id = sale_id )		
		service_list = s.sale_service.all() 
		return render(request, 'services/sale.html', {'s':s, 'service_list':service_list})
	except:
		raise Http404("Акция не найдена!")	



def newreview(request):
	service_list = Service.objects.all()
	workers_list = Worker.objects.all()
	if request.user.is_authenticated:
		try:
			client = Client.objects.get(user = request.user)
			client_name = client.client_name
			email = client.client_email
			telnum = client.client_telephonenumber
			
			if request.method == 'POST':
				client = Client.objects.get(user = request.user)
				client_name = client.client_name
				email = client.client_email
				telnum = client.client_telephonenumber
				wname = request.POST.get('worker')
				worker = Worker.objects.get(worker_name = wname)
				service = Service.objects.get(service_name = request.POST.get('service'))
				text = request.POST.get('comment')
				newreview = Review.objects.create(review_pubdate = datetime.datetime.today(), review_service = service, review_worker = worker, review_client = client, review_telephonenumber = telnum, review_email = email, review_text = text, review_screenshot = 'rew1.jpg')
				newreview.save()
				return HttpResponseRedirect('/services/reviews')
			return render(request, 'services/newreview.html', {'workers_list': workers_list, 'service_list':service_list, 'client_name':client_name, 'email':email, 'telnum':telnum})
		except:
			if request.method == 'POST':
				name = request.POST.get('name')
				email = request.POST.get('email')
				telnum = request.POST.get('telnum')
				wname = request.POST.get('worker')
				worker = Worker.objects.get(worker_name = wname)
				service = Service.objects.get(service_name = request.POST.get('service'))
				text = request.POST.get('comment')
				newreview = Review.objects.create(review_pubdate = datetime.datetime.today(), review_service = service, review_worker = worker, review_name = name, review_telephonenumber = telnum, review_email = email, review_text = text, review_screenshot = 'rew1.jpg')
				newreview.save()
				return HttpResponseRedirect('/services/reviews')
			return render(request, 'services/newreview.html', {'workers_list': workers_list, 'service_list':service_list})
	else:
		if request.method == 'POST':
			if request.method == 'POST':
				name = request.POST.get('name')
				email = request.POST.get('email')
				telnum = request.POST.get('telnum')
				wname = request.POST.get('worker')
				worker = Worker.objects.get(worker_name = wname)
				service = Service.objects.get(service_name = request.POST.get('service'))
				text = request.POST.get('comment')
				newreview = Review.objects.create(review_pubdate = datetime.datetime.today(), review_service = service, review_worker = worker, review_name = name, review_telephonenumber = telnum, review_email = email, review_text = text, review_screenshot = 'rew1.jpg')
				newreview.save()
				return HttpResponseRedirect('/services/reviews')
	return render(request, 'services/newreview.html', {'workers_list': workers_list, 'service_list':service_list})
	