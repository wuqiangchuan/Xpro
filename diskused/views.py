#coding:utf-8
from django.shortcuts import  render_to_response
# Create your views here

# import json
# from django.http.response import HttpResponse
from utils_getRemoteuser import getUserInfo,OneGetUserInfo
from devops import models
from django.template.context import RequestContext
from django.http.response import HttpResponse
from django.contrib.auth.decorators import login_required

@login_required
def getUser(request):
    #getUserInfo()  #这里这个函数用于获取所有的磁盘信息-->注册了远程用户的
        #用于定时获取磁盘使用信息数据。
        
    diskObj = models.diskUsed.objects.all()
    hostObj = models.CmdbHost.objects.all()
    
    forgiKey = []
    for I in diskObj:
        forgiKey.append(I.host_id)
    forgiKey = map(lambda x:int(x),list(set(forgiKey))) #把数据库中的id长整型转换成整型, 后来发现可能是多余的,js识别起来是一样的。
    return render_to_response('disk/diskIndex.html',{'diskObj':diskObj,'hostObj':hostObj,"forgiKey":forgiKey},RequestContext(request))

@login_required
def tmpUpdate(request,Idd):
    print Idd
    #cmObj = models.CmdbHost.objects.get(id=Idd)
    
    OneGetUserInfo(Idd)
    return HttpResponse("ok")