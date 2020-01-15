from django.shortcuts import render, redirect
from services.models import *
from orders.models import *
from django.http import HttpResponse, HttpResponseRedirect # Add this
from .forms import ContactForm # Add this
from django.core.mail import *
from django.contrib.auth.forms import UserCreationForm
from django.views.generic.edit import FormView
from django.contrib.auth.models import User, Group
# Create your views here.
def index(request):
	last_sales_list = Sale.objects.order_by('id')[:3]
	last_reviews_list = Review.objects.order_by('id')[:3]
	return render(request, 'main/lists.html', {'last_sales_list':last_sales_list, 'last_reviews_list':last_reviews_list})

def writeus(request):
	if request.method == 'POST':
		form = ContactForm(request.POST)
		if form.is_valid():
			sender_name = form.cleaned_data['name']
			sender_email = form.cleaned_data['email']

			message = "{0} has sent you a new message:\n\n{1}".format(sender_name, form.cleaned_data['message'])
			send_mail('New Enquiry', message, sender_email, ['example@example.com'])
			return render(request, 'main/writeusanswer.html')
	else:
		form = ContactForm()

			#send email code goes here
	return render(request, 'main/writeus.html', {'form':form})

def registration(request):
	if request.method == 'POST':
		name = request.POST.get('name')
		email = request.POST.get('email')
		password = request.POST.get('password')
		newuser = User.objects.create_user(username = name, email = email, password = password)
		newuser.save()
		return HttpResponseRedirect('/accounts/login')
	return render(request, 'main/registration.html')	

def pay(request):
	return render(request, 'main/payment.html')

def contacts(request):
	return render(request, 'main/contacts.html')

