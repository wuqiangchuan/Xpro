#!/bin/env python2.7
#coding:utf-8
#code  by  mik 
#qiangchuan.wu

# from django.http.response import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.http.response import HttpResponse
from Monitor import models


class AcObj(object):
    def __init__(self,request,idd=None):
        self.request = request
        if idd:
            self.idd = idd 
        
    








def ac_index(request,):
    
    AllObj = models.Action.objects.all()

    
    return render_to_response('Monitor/action/index.html',{'Obj':AllObj,},RequestContext(request))
    
    
def Add(request):
        
    #主机
    #主机组
    #通知的用户
    HostObj = models.Hosts.objects.all()
    HostGroupObj= models.HostGroup.objects.all()
    
    
    
    return render_to_response("Monitor/action/add.html",{'tempObj':HostObj,'groupObj':HostGroupObj},RequestContext(request))


def Edit(request):
    
    pass


def Del(request):
    
    pass