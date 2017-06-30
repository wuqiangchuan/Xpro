#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from django.shortcuts import render_to_response, redirect
from django.template.context import RequestContext
from Monitor import models
import utils_views

def hg_index(request):
    obj = models.HostGroup.objects.all()
 
    return render_to_response('Monitor/hostgroup/index.html',{'Obj':obj},RequestContext(request))

def Add(request):
    OBJ = utils_views.extend_views(request)
    
    if request.method == 'GET':
        tempObj = OBJ.temp()
    
        return render_to_response('Monitor/hostgroup/add.html',{'tempObj':tempObj},RequestContext(request))
    elif request.method == 'POST':
        OBJ.Add()
        return redirect('/Monitor/hostgroup')


def Del(request,idd):
    Obj  = utils_views.extend_views(request,idd)
    Obj.Del()


def Edit(request,idd):
    firstNoIn = []  #获得没有关联的主机
    firstIn =  []   #关联的主机
    
    resultSer = []  
    result = []
    
    temp = models.Templates.objects.all()        # serverIndex中多有对象
    hostgroup = models.HostGroup.objects.get(id=idd)
    
    for haveTemp in hostgroup.templates.all():
        resultSer.append(haveTemp.name)
        firstIn.append(int(haveTemp.id))
        
    for Alltemp in temp:
        if Alltemp.name not in resultSer:
            result.append(Alltemp)
            firstNoIn.append(int(Alltemp.id))
            
    if request.method == 'GET':
        
        return render_to_response('Monitor/hostgroup/add.html',{'tempObj':result,'temp':temp,'hostgroup':hostgroup},RequestContext(request))
                            
                            
    elif request.method == 'POST':
        lastRemove = []
        lastAdd = []
        
        removeTemp = request.POST.getlist('temNoIn')
        addTemp = request.POST.getlist('tempIn')
        
        name = request.POST.get('hgname',None)
       
        memo = request.POST.get('comment',None)
        
        hostgroup.name = name 
       
        hostgroup.memo = memo 
        hostgroup.save()
        
        
        removeTemp = map(lambda x:int(x),removeTemp)
        addTemp = map(lambda x:int(x),addTemp)
        
        for ADD in addTemp:
            if ADD not in firstIn:
                lastAdd.append(ADD)
        
        for REMOVE in removeTemp:
            if REMOVE not in firstNoIn:
                
                lastRemove.append(REMOVE)

        hostgroup.templates.add(*lastAdd)
        hostgroup.templates.remove(*lastRemove)
        
        return redirect("/Monitor/hostgroup/")
    

    else:
        pass

    