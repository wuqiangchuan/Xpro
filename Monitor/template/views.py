#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from django.shortcuts import render_to_response, redirect
import utils_temp_views
from django.template.context import RequestContext
from Monitor import models


def template(request):
    OBJ = utils_temp_views.temp(request)
    if request.method == 'GET':
        result = OBJ.Get()
        
        return render_to_response("Monitor/template/template.html",{'tempObj':result},)

    


def add(request):
    OBJ = utils_temp_views.temp(request)
    if request.method == 'GET':
        
        serverObj,triggers = OBJ.GetAdd()
        
        return render_to_response("Monitor/template/add.html",{'serverObj':serverObj,'triggers':triggers},RequestContext(request))

    elif request.method == 'POST':
        
        OBJ.Add()
        
        return redirect("/Monitor/template/add/")
        




def tempdel(request,idd):
    OBJ = utils_temp_views.temp(request,idd)
    OBJ.Del()
    
    return redirect("/Monitor/template/")


def tempedit(request,idd): 
    firstSerNoIn = []
    firstSerIn = []
    
    firstTriNoIn = []
    firstTriIn = []
    
    SerResult  = []
    Ser = []
    
    TriResult = []
    Tri = []
    
    AllSer = models.Service.objects.all()
    AllTri = models.Triggers.objects.all()
    
    editObj = models.Templates.objects.get(id=idd)
    
    for ser in editObj.service.all():
        SerResult.append(ser.name)
        firstSerIn.append(int(ser.id))
    
    
    for tri in editObj.triggers.all():
        TriResult.append(tri.name)
        firstTriIn.append(int(tri.id))
        
        
    for allser in AllSer:
        if allser.name not in SerResult:
            Ser.append(allser)
            firstSerNoIn.append(int(allser.id))
            
    for alltri in AllTri:
        
        if alltri.name not in TriResult:
            Tri.append(alltri)
            firstTriNoIn.append(int(alltri.id))


    if request.method == 'GET':
        
        return render_to_response("Monitor/template/add.html",{'editObj':editObj,'serverObj':Ser,'triggers':Tri , 'allSerObj':AllSer,'allTriObj':AllTri},RequestContext(request))


    elif request.method == 'POST':
        serverAdd = []
        serverDel = []
        
        triggerAdd = []
        triggerDel = []
        
        name = request.POST.get('tempname',None)

        serverList = request.POST.getlist('Server')
        serverListRemove = request.POST.getlist('servername')
        
        triggerList = request.POST.getlist('Triggers')
        triggerListRemove = request.POST.getlist('triggername')
        
        
        serverList = map(lambda x:int(x), serverList)
        serverListRemove = map(lambda x:int(x),serverListRemove)
        
        triggerListRemove = map(lambda x:int(x),triggerListRemove)
        triggerList = map(lambda x:int(x), triggerList)
        
        for SADD in serverList:
            if SADD not in firstSerIn:
                serverAdd.append(SADD)
                
        for SDEL in serverListRemove:
            if SDEL not in firstSerNoIn:
                serverDel.append(SDEL)

        for TADD in triggerList:
            if TADD not in firstTriIn:
                triggerAdd.append(TADD)
                
        for TDEL in triggerListRemove:
            if TDEL not in firstTriNoIn:
                triggerDel.append(TDEL)
                
        editObj.name = name
        editObj.save()
        
        editObj.service.add(*serverAdd)
        editObj.service.remove(*serverDel)
        
        editObj.triggers.add(*triggerAdd)
        editObj.triggers.remove(*triggerDel)
        
        return redirect("/Monitor/template/")
        

    else:
        pass