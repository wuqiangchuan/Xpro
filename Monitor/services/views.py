#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from django.shortcuts import render_to_response, redirect
from django.template.context import RequestContext
from Monitor import models

import utils_views
from django.contrib.auth.decorators import login_required

@login_required
def serindex(request):
    OBJ = utils_views.servicesObj(request)
    Obj = OBJ.GetAll()

    return render_to_response('Monitor/services/index.html',{'Obj':Obj},RequestContext(request))

@login_required
def add(request):
    OBJ = utils_views.servicesObj(request)
    if request.method == 'GET':
        
        serindex = OBJ.serIndex()
        
        return render_to_response('Monitor/services/add.html',{'serindex':serindex},RequestContext(request))



    elif request.method == 'POST':
         OBJ.add()
         return redirect("/Monitor/services/")
     
    else:
        pass


@login_required
def Del(request,idd): 
    OBJ = utils_views.servicesObj(request,idd)
    OBJ.Del()
    
    return redirect("/Monitor/services/")


@login_required
def edit(request,idd):
    
    firstNoIn = []  #获得没有关联的主机
    firstIn =  []   #关联的主机
    
    resultSer = []  
    result = []
    
    allIndex = models.ServiceIndex.objects.all()        # serverIndex中多有对象
    service = models.Service.objects.get(id=idd)
    
    for index in service.items.all():
        resultSer.append(index.name)
        firstIn.append(int(index.id))
        
    for AllIndex in allIndex:
        if AllIndex.name not in resultSer:
            result.append(AllIndex)
            firstNoIn.append(int(AllIndex.id))
            
    if request.method == 'GET':
        
        return render_to_response('Monitor/services/add.html',{'serindex':result,'allIndex':allIndex,'service':service},RequestContext(request))
                                  
                              
    elif request.method == 'POST':
        lastRemove = []
        lastAdd = []
        
        removeIndex = request.POST.getlist('serIndex')
        addIndex = request.POST.getlist('serIndexName')
        
        name = request.POST.get('servicename',None)
        interval = request.POST.get('intarval',None)
        plugin_name = request.POST.get('plugin_name',None)

        memo = request.POST.get('comment',None)
        
        service.name = name 
        service.interval = interval 
        service.plugin_name = plugin_name 
        service.memo = memo 
        service.save()
        
        
        removeIndex = map(lambda x:int(x),removeIndex)
        addIndex = map(lambda x:int(x),addIndex)
        
        for ADD in addIndex:
            if ADD not in firstIn:
                lastAdd.append(ADD)
        
        for REMOVE in removeIndex:
            if REMOVE not in firstNoIn:
                
                lastRemove.append(REMOVE)

        
        service.items.add(*lastAdd)
        service.items.remove(*lastRemove)
        
        return redirect("/Monitor/services/")

    else:
        pass

    