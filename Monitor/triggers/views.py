#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

import utils_views
from django.shortcuts import render_to_response, redirect
from django.template import RequestContext
from django.contrib.auth.decorators import login_required

@login_required
def triggerindex(request):
    OBJ = utils_views.triggerObj(request)
    
    Obj = OBJ.GetAll()
    
    return render_to_response('Monitor/trigger/index.html',{'Obj':Obj},RequestContext(request))
    
 
@login_required   
def add(request):
    if request.method == 'GET':
        return render_to_response('Monitor/trigger/add.html',RequestContext(request))
    
    elif request.method == 'POST':
        OBJ = utils_views.triggerObj(request)
        OBJ.Add()
        
        return render_to_response('Monitor/trigger/add.html',RequestContext(request))
    
    else:
        pass
    

@login_required
def edit(request,idd):
    OBJ = utils_views.triggerObj(request,idd)
    if request.method == 'GET':
        result = OBJ.GetOne()
        return render_to_response('Monitor/trigger/add.html',{'result':result},RequestContext(request))
    
    elif request.method == 'POST':
        OBJ.Edit()
    
        return redirect('/Monitor/trigger/')
       # return render_to_response('Monitor/trigger/index.html',{'Obj':OBJ},RequestContext(request))
    
     
@login_required  
def Del(request,idd):
    OBJ = utils_views.triggerObj(request,idd)
    OBJ.Del()
    return redirect('/Monitor/trigger/')
