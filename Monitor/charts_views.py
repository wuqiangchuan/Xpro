#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from django.http.response import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext
import models
from MonitorDataSave import models as MonitorModels

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
