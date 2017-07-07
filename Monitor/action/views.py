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
        
        name = self.request.POST.get('acname',None)
        """下面三组都是_List列表格式。"""
        HostList = self.request.POST.getlist('tempIn')
        HostGroupList = self.request.POST.getlist('GroupIn')
        Innotifiuser = self.request.POST.getlist('Innotifiuser')
       
       
        interval = self.request.POST.get('interval')
        acton_type = self.request.POST.get('acton_type')
        sendmsgSub = self.request.POST.get('sendmsgSub',None)
        sendmsgBody = self.request.POST.get('sendmsgBody',None)
        scritp = self.request.POST.get('scritp',None)
        
        noti_choice = self.request.POST.get('noti_choice')
        
        if int(noti_choice) == 1:
                recover_subject = self.request.POST.get('recover_subject',None)
                
        
        
        
        
        
        
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