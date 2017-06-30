#coding:utf-8
from django.shortcuts import  render_to_response, redirect

from django.template.context import RequestContext
from django.http.response import HttpResponse
from devops import models

from AppCtrl.appViewExtend import appCtrl,appEdit
from django.contrib.auth.decorators import login_required
# Create your views here.
import time
import json
from utils_getApp_Cmd import getAppStatus
from utils_redisSaveStatus import Rsave
from conf.conf import RedisHost,RedisPort
from remote.utils_pagination import UsePagination


@login_required
def appList(request,pages):
    #getAppStatus()
       
    allAPP = models.AppCtrl.objects.all().order_by('IPaddr')
         #找到redis中所有的key对应的value
    R=Rsave(RedisHost,RedisPort)
     #分页设定:
    disNumObj = models.pageInfo.objects.all()
    disNum=20
    for I in disNumObj:
        if I.AppListPage is None or I.AppListPage == '':
            disNum = 20
        else:
            disNum = int(I.AppListPage)

    allCount = models.CmdbHost.objects.all().count()

    Pages,beforePage,afterPage,x,pages= UsePagination(pages, disNum, allCount)
#     print Pages,beforePage,afterPage,x,pages

    assetObj = models.CmdbHost.objects.all()[disNum*pages-disNum:disNum*pages]
    Sattus={}
    for I in allAPP:
        Sattus[I.IPaddr] = R.Hgetall(I.IPaddr)
    print Sattus
         
    return render_to_response('APP/App.html',{'assetObj':allAPP,'Status':Sattus,'x':x,'Pages':Pages,'disNum':disNum,'beforePage':beforePage,'afterPage':afterPage},RequestContext(request))


@login_required
def addApp(request):
    
    remoteObj = models.remote_user.objects.all()
    if request.method == 'GET':
        
        return render_to_response('APP/addApp.html',{"hostObj":remoteObj},RequestContext(request))
    
    elif request.method =="POST":
        addObj = appCtrl(request,'add')   #将提交过来的数据给appCtrl类处理。
        REturnObj = addObj.addAPP() #

        return render_to_response('APP/addApp.html',{"hostObj":remoteObj,'flag':REturnObj},RequestContext(request))

"""
        IP = request.POST.get('hostip',None)
        AppName = request.POST.get('AppName',None)
        port = request.POST.get('port',None)
        
        Path = request.POST.get('Path',None)
        startAction = request.POST.get('startAction',None)
        stopAction = request.POST.get('stopAction',None)
        restart = request.POST.get('restart',None)
                                                 
        print IP,AppName,port,Path,startAction,stopAction,restart
        return HttpResponse("ok")
    
    else:
        pass
    
    #return render_to_response('APP/addApp.html',{"hostObj":remoteObj},RequestContext(request))
"""

@login_required
def edit(request,Idd):
    if request.method == 'GET':
       
        getEditObj = appEdit(request,Idd)
        getObj = getEditObj.getFunc
        return render_to_response('APP/edit.html',{"hostObj":getObj},RequestContext(request))

    elif request.method == 'POST':
        postEditObj = appEdit(request,Idd)
        resultStatus = postEditObj.postFunc
        
        
        if resultStatus == 'ok':
            return redirect('/AppCtrl/')
        else:
            getEditObj = appEdit(request,Idd)
            getObj = getEditObj.getFunc
            fb='error'
            return render_to_response('APP/edit.html',{"hostObj":getObj,'fb':fb},RequestContext(request))
        
@login_required
def delApp(request):
    #print "del app"
    #return HttpResponse(json.dumps({'result':"resutl",'flag':'ok'}))

    delObj = appCtrl(request,'')
    delresult,flag = delObj.delAPP()
    
    return HttpResponse(json.dumps({'result':delresult,'flag':flag}))


@login_required
def stopApp(request):
    pass


@login_required
def updateStatus(request):
    print request.POST['Data']
    
    time.sleep(2)
    
    return HttpResponse('ok')


@login_required
def restart(request):
    pass