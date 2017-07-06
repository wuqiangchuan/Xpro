#!/bin/env python2.7
#coding:utf-8
#code  by  mik 
#qiangchuan.wu
from django.shortcuts import render_to_response, redirect
from django.template.context import RequestContext
from django.http.response import HttpResponse
from Monitor import models


class notiUser(object):
    def __init__(self,request,idd=None):
        self.request = request
        if idd:
            self.idd = idd

    def getAll(self):
        return models.NotifiersUser.objects.all()
    
    def Add(self):
        
        username = self.request.POST.get('username',None)
        Email = self.request.POST.get('email',None)
        try:
            models.NotifiersUser.objects.create(name=username,email=Email)
        except Exception,e:
            print e
    
    def Del(self):
        try:
            models.NotifiersUser.objects.get(id=self.idd).delete()
            return 'ok'
        except Exception,e:
            return e
        
        
    def Edit(self):
        pass
    
def nuser_index(request):
    
    Obj = notiUser(request)
    allObj = Obj.getAll()
    
    return render_to_response('Monitor/notifieruser/index.html',{'allObj':allObj},RequestContext(request))
    

def Add(request):
    
    if request.method == 'GET':
        return render_to_response('Monitor/notifieruser/add.html',RequestContext(request))
    
    elif request.method == 'POST':
        nouserObj = notiUser(request)
        nouserObj.Add()
        
        return redirect('/Monitor/notifieruser/add/')

    else:
        pass


def Del(request,idd):
    
    delObj = notiUser(request,idd)
    result  = delObj.Del()
    if result  == 'ok':
        pass
    else:
        print result
    return redirect('/Monitor/notifieruser/')
        
        
def Edit(request,idd):
    pass