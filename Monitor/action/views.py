#!/bin/env python2.7
#coding:utf-8
#code  by  mik 
#qiangchuan.wu

# from django.http.response import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.http.response import HttpResponse
from Monitor import models

def ac_index(request,):
    
    AllObj = models.Action.objects.all()
    
    return render_to_response('Monitor/action/index.html',{'Obj':AllObj},RequestContext(request))
    
    
def Add(request):
    
    return render_to_response("Monitor/action/add.html",RequestContext(request))


def Edit(request):
    
    pass


def Del(request):
    
    pass