#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from django.http.response import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext
import models
from MonitorDataSave import models as MonitorModels
from django.utils.timezone import now,timedelta

from random import randint
from django.views.decorators.csrf import csrf_exempt
# from datetime import timedelta
import time
import datetime


def index(request):
    OBJ = models.Hosts.objects.all()
    
    return render_to_response('Monitor/charts/index.html',{'Obj':OBJ},RequestContext(request))



def getOne(request,IP):
    cpuStat = MonitorModels.CpuStat.objects.filter(Host=IP)
    Mem = MonitorModels.MemInfo.objects.filter(Host=IP)
    cpuLoad = MonitorModels.CpuLoad.objects.filter(Host=IP)
    
    for b in cpuLoad:
        print b.Load01,"bbbbbbbbbbbbbbbbbbbbbbbbbb"
    
    for I in Mem:
        pass
        print I.Total,I.Free
    
    
    return render_to_response('Monitor/charts/Oncharts.html',{'cpuStat':cpuStat,'Mem':Mem,'cpuload':cpuLoad},RequestContext(request))


def test_charts(request):

    """
    start_time = time.time()
      
    print type(start_time)
    end_time  = float(int(start_time) - 10*600)
      
    #start_time=datetime.datetime.strptime(time.localtime(start_time),'%Y-%m-%d %H:%M:%S')
    end_time = time.localtime(end_time)
    """
    
    end_time = datetime.datetime.now()
    start_time = end_time - datetime.timedelta(seconds=10*60)
    print start_time,end_time
    
#     print time.localtime(end_time)
#     
#     #print time.mktime(end)
# #     print time.localtime(end)
#     end_time = time.ctime(end_time)
#     start_time = time.ctime(start_time)
# #     end_time = time.strptime(end_time,  "%Y-%m-%d %X")
#         
#     #print time.strftime("%Y-%m-%d",end_time)
#     
#     print time.asctime(),time.ctime(),time.time()
#     print time.ctime(end_time),time.time()
    
#     start = now().date()
#     end = start + timedelta(min=-5)
    
    #pub_date__range=(start_date, end_date))
#     cpuLoad = list(MonitorModels.CpuLoad.objects.filter(Host='127.0.0.1'))#django filter querySet导致无法使用列表的分割方式，只能先转化为list类型

   
#     start_time = datetime.datetime(2017,07,04,0,0)
#     end_time = datetime.datetime(2017,07,20,0,0)

    cpuLoad = MonitorModels.CpuLoad.objects.filter(Host='127.0.0.1',UpdateTime__range=(start_time,end_time)) #django filter querySet导致无法使用列表的分割方式，只能先转化为list类型
    print cpuLoad
    print "startting"
    for I in cpuLoad:
        
        print I.Load01

    return render_to_response('Monitor/charts/test_charts.html',{'cpuLoad':cpuLoad})


@csrf_exempt
def cputest(request):
    
    start_time = None
    end_time = datetime.datetime.now()
    start_time = end_time - datetime.timedelta(seconds=10*60)
    
    
    

    return HttpResponse(randint(1,10))
