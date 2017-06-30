#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from django.shortcuts import render_to_response, redirect
from django.template.context import RequestContext
from Monitor import models
import utils_views


def h_index(request):
    
    AllObj = models.Hosts.objects.all()
    
    return render_to_response('Monitor/host/index.html',{'Obj':AllObj},RequestContext(request))


def Add(request):
    OBJ  = utils_views.Hobj(request)
    if request.method == 'GET':
        hgObj,tempObj = OBJ.GetAll()
        
        return render_to_response('Monitor/host/add.html',{'hgObj':hgObj,'tempObj':tempObj}, RequestContext(request))
                                
            
            
                                
    elif request.method== 'POST':
        OBJ.Add()
        
        return redirect('/Monitor/host/')
    
    else:
        pass

def Del(request,idd):
    OBJ  = utils_views.Hobj(request,idd)
    OBJ.Del()
    return redirect('/Monitor/host/')
    


def Edit(request,idd):
    firstSerNoIn = []
    firstSerIn = []
    
    firstTemNoIn = []
    firstTemIn = []
    
    SerResult  = []  #host group
    Ser = []
    
    TemResult = []   # templates
    Tem = []
    
    AllSer = models.HostGroup.objects.all()
    AllTem = models.Templates.objects.all()
    
    editObj = models.Hosts.objects.get(id=idd)
    
    for ser in editObj.host_groups.all():
        SerResult.append(ser.name)
        firstSerIn.append(int(ser.id))
    
    
    for tri in editObj.templates.all():
        TemResult.append(tri.name)
        firstTemIn.append(int(tri.id))
        
        
    for allser in AllSer:
        if allser.name not in SerResult:
            Ser.append(allser)
            firstSerNoIn.append(int(allser.id))
            
    for alltem in AllTem:
        
        if alltem.name not in TemResult:
            Tem.append(alltem)
            firstTemNoIn.append(int(alltem.id))


    if request.method == 'GET':
        
        return render_to_response("Monitor/host/add.html",{'editObj':editObj,'hgObj':Ser,'tempObj':Tem , 'allSerObj':AllSer,'allTemObj':AllTem},RequestContext(request))


    elif request.method == 'POST':
        hgAdd = []
        hgDel = []
        
        tempAdd = []
        tempDel = []
        
        host = request.POST.get('hostname',None)
        ipaddr = request.POST.get('ipaddr',None)
       
        hgIn = request.POST.getlist('hgIn')
        hgNoIn = request.POST.getlist('hgNoIn')


        tempIn = request.POST.getlist('tempIn')
        tempNoIn = request.POST.getlist('tempNoIn')
        
        
        monitor_by = request.POST.get('monitor_by')
        status = request.POST.get('status')
        memo = request.POST.get('comment',None)
        
        
        
        
        for SADD in hgIn:
            if SADD not in firstSerIn:
                hgAdd.append(SADD)
                
        for SDEL in hgNoIn:
            if SDEL not in firstSerNoIn:
                hgDel.append(SDEL)

        for TADD in tempIn:
            if TADD not in firstTemIn:
                tempAdd.append(TADD)
                
        for TDEL in tempNoIn:
            if TDEL not in firstTemNoIn:
                tempDel.append(TDEL)
                
        editObj.name = host
        editObj.ip_addr = ipaddr
        editObj.monitor_by = monitor_by
        editObj.status = status
        editObj.memo = memo
        
        editObj.save()
        
        
        
        editObj.host_groups.add(*hgAdd)
        editObj.host_groups.remove(*hgDel)
        
        editObj.templates.add(*tempAdd)
        editObj.templates.remove(*tempDel)
        
       
        return redirect('/Monitor/host/')