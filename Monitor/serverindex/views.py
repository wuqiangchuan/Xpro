#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
import utils_views
from django.shortcuts import render_to_response, render, redirect
from django.contrib.auth.decorators import login_required
from django.template import RequestContext

@login_required
def serverindex(request):
    OBJ=utils_views.serindex(request)
    serObj = OBJ.Get()
    
    return render_to_response("Monitor/serverindex/index.html",{'serObj':serObj},RequestContext(request))


@login_required
def add(request):
    
    
    if request.method =='GET':
        return render_to_response("Monitor/serverindex/add.html",RequestContext(request))
    
    elif request.method == 'POST':
        OBJ=utils_views.serindex(request)
        OBJ.Post()
        flag = 1
        return render_to_response("Monitor/serverindex/add.html",{'flag':flag},RequestContext(request))
    else:
        pass
    
@login_required
def Del(request,idd):
    OBJ = utils_views.serindex(request,idd)
    OBJ.Del()
    
    return redirect('/Monitor/serverindex/')


def edit(request,idd):
    OBJ = utils_views.serindex(request,idd)
    
    if request.method == 'GET':
        result  = OBJ.GetOne()
        url = 'Monitor/serverindex/edit/' + idd
        return render_to_response("Monitor/serverindex/add.html",{'result':result,'url':url},RequestContext(request))
    
    
    elif request.method == 'POST':
        
        OBJ.Edit()
        return redirect('/Monitor/serverindex/')
        
    
    else:
        pass