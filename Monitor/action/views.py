#!/bin/env python2.7
#coding:utf-8
#code  by  mik 
#qiangchuan.wu

# from django.http.response import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.http.response import HttpResponse
from Monitor import models
import time


class AcObj(object):
    def __init__(self,request,idd=None):
        self.request = request
        if idd:
            self.idd = idd 
    
    def GetAll(self):
        #返回顺序：host, hostgroup, NonifilterUser(通知用户）
        return models.Hosts.objects.all(),models.HostGroup.objects.all(),models.NotifiersUser.objects.all()
    
    def Add(self):
        
        
        
        pass
    
    def Del(self):
        pass
    
    def Edit(self):
        pass



def ac_index(request,):
    
    AllObj = models.Action.objects.all()

    return render_to_response('Monitor/action/index.html',{'Obj':AllObj,},RequestContext(request))
    
    
def Add(request):
    ActionObj = AcObj(request)
    if request.method == "GET":
       
    #主机
    #主机组
    #通知的用户
        HostObj,HostGroupObj,Users = ActionObj.GetAll() 
#         testList = [i.name for i in HostGroupObj]
#         print testList,time.time()
        return render_to_response("Monitor/action/add.html",{'tempObj':HostObj,'groupObj':HostGroupObj,'Users':Users},RequestContext(request))

    elif request.method == 'POST':
        pass
        ActionObj.Add()
    
    else:
        pass


def Edit(request):
    pass


def Del(request):
    
    pass