#coding:utf-8

from django.shortcuts import render, render_to_response,HttpResponseRedirect,redirect
from django.http.response import HttpResponse
from django.contrib import auth
from django.contrib.auth.decorators import login_required
from django.template import RequestContext


# Create your views here.

def login(request):
    
    if request.method == 'GET':
        return render_to_response('login.html',RequestContext(request))
    
    elif request.method == 'POST':
        next_url = request.POST.get('next',None)
        
        if next_url:
            print next_url
        else:
            print "no next url"
            
        username = request.POST.get('username', None)
        password = request.POST.get('password', None)
        user = auth.authenticate(username=username, password=password)
        if user is not None and user.is_active:
          #if  user.is_active:
            # Correct password, and the user is marked "active"
            auth.login(request, user)
            # Redirect to a success page.
            
            #return HttpResponseRedirect("/index/")
            return redirect('/index/')
            #return render_to_response('index.html',context_instance=RequestContext(request))
          #else:
          
            # Show an error page
        else:
            error = '用户名或密码错误, 请检查用户名和密码. '
            username = request.POST.get('username', None)
            password = request.POST.get('password', None)
            #return HttpResponseRedirect("/login/",{'errormsg':errormsg})
            result={'error':error,'username':username,'password':password}
            return render_to_response("login.html",result, RequestContext(request))
    else:
        return HttpResponseRedirect('/login/',)
        
    """
    
    if request.method == 'GET':
        return render_to_response('login.html',RequestContext(request))
    #if request.method == 'GET':
    #   return render_to_response('login.html',RequestContext(request))
    else:
        username = request.POST.get('username')
        password = request.POST.get('password')
        # if username == "admin" and password == "pass":
        #     return HttpResponseRedirect('index')
        # else:
        #     return HttpResponseRedirect('login')
        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            return HttpResponseRedirect('/index/')
        else:
            error = "用户名或密码错误，请重新输入。"
            return render_to_response("login.html",RequestContext(request))
"""
"""     @login_required """

def logout(request):
    auth.logout(request)
        
    return redirect('/login/',)
        
@login_required 
def index(request):
    #先判断用户是否为登陆用户，如果不是则格式化并返回登陆页面。
    if request.user.is_authenticated():
        return render_to_response('index.html',)
   
    else:
        return render_to_response('login.html',)