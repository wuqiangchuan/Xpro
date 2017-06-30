#coding:utf8
import os
from django.shortcuts import render, render_to_response, redirect
from devops import models
from django.template import RequestContext
import time
from utils_getHostInfo import getInfo,getInfoToremoteRun
from remote import utils_FabricApiFile
from django.http.response import HttpResponse
from django.contrib.auth.decorators import login_required#require_role
import utils_FabricApiCmd
import json
# import re
from utils_pagination import UsePagination
#from django.views.decorators.csrf import requires_csrf_token

#from utils_FabricApiFile import FileHandler

@login_required
def ssh_remote(request,pages):
#     remoteObj = models.remote_user.objects.all()
    
    disNumObj = models.pageInfo.objects.all()
    for I in disNumObj:
        if I.remote_userPage is None or I.remote_userPage == '':
            disNum = 20
        else:
            disNum = int(I.remote_userPage)

    allCount = models.remote_user.objects.all().count()  #下面这个UsePagination把前一页，后一页，总页数等等获得
    Pages,beforePage,afterPage,x,pages= UsePagination(pages, disNum, allCount)
    print Pages,beforePage,afterPage,x,pages


    assetObj = models.remote_user.objects.all()[disNum*pages-disNum:disNum*pages]
    return render_to_response('remote/ssh_remote.html',{'remoteObj':assetObj,'x':x,'Pages':Pages,'disNum':disNum,'beforePage':beforePage,'afterPage':afterPage},RequestContext(request))
    #return render_to_response('remote/ssh_remote_gateone.html',{'remoteObj':remoteObj})
    #return render_to_response('remote/ssh_remote.html',{'remoteObj':remoteObj,})


@login_required
def displaySshNum(request):
    if request.method == 'POST':
                remote_userPage = request.POST.get('displayNum')
               
                if models.pageInfo.objects.values("remote_userPage").first():
                    models.pageInfo.objects.update(remote_userPage=remote_userPage)
                else:
                    pageInfo = models.pageInfo(remote_userPage=remote_userPage)
                    pageInfo.save()
            
                return redirect('/remote/ssh_remote/')


@login_required
def remote_useradd(request):
    if request.method == "GET":
        hostObj = models.CmdbHost.objects.all()
    
        return render_to_response('remote/remote_useradd.html',{'hostObj':hostObj},RequestContext(request))

    else: 
        
        #username = request.POST.get('remote_user',None)
        user = request.POST.get('remote_user',None)
        password = request.POST.get('password',None) 
        port = request.POST.get('port',None)
        
        auth_type = request.POST.get('auth_type')
        hostip = request.POST.get('hostip')
       
        hostipObj = models.CmdbHost.objects.get(id=hostip)
        remoteObj = models.remote_user(username=user,password=password,port=port,auth_choice=auth_type,host=hostipObj)
        remoteObj.save()
        return redirect('/remote/ssh_remote/')


@login_required
def remote_user_delete(request,Idd):
    models.remote_user.objects.get(id=Idd).delete()
    
    return redirect('/remote/ssh_remote')


@login_required
def remote_user_edit(request,Idd):
    if request.method == 'GET':
        beforeObj = models.remote_user.objects.get(id=Idd)
        hostObj = models.CmdbHost.objects.all()
        
        return render_to_response('remote/remote_user_edit.html', {'beforeObj':beforeObj,'hostObj':hostObj})
    
    else:
        user = request.POST.get('remote_user',None)
        password = request.POST.get('password',None) 
        port = request.POST.get('port',None)
        
        auth_type = request.POST.get('auth_type')
        hostip = request.POST.get('hostip')
       
        hostipObj = models.CmdbHost.objects.get(id=hostip)
        remoteObj = models.remote_user(username=user,password=password,port=port,auth_choice=auth_type,host=hostipObj)
        remoteObj.save()
        return redirect('/remote/ssh_remote/')
     
     
@login_required   
def upload_remote(request):
    remoteObj = models.remote_user.objects.all()
    if request.method == "GET":
        
        flag = '4'
        
        return render_to_response('remote/upload_remote.html',{'remoteObj':remoteObj,'flag':flag,'upactive':'active'},RequestContext(request))
    
    if request.method == "POST":
        myFile =request.FILES.get("upfile", None)    # 获取上传的文件，如果没有文件，则默认为None  
        hostList = request.POST.get("NoneDisplay",None)
        targetpath = request.POST.get("targetpath",None)
     
        if not myFile:
            flag = '0'
            return render_to_response('remote/upload_remote.html',{'remoteObj':remoteObj,'flag':flag,'upactive':'active'},RequestContext(request))
                
                #存储接收到的上传文件
        elif myFile:
            destination = open(os.path.join("/tmp/upload",myFile.name),'wb+')    # 打开特定的文件进行二进制的写操作  
            for chunk in myFile.chunks():      # 分块写入文件  
                destination.write(chunk)  
            destination.close()
            time.sleep(2)
            
            if hostList:
                ipList,passData = getInfo(hostList)
                localpath="/tmp/upload/" + myFile.name
                utils_FabricApiFile.tru_func(localpath,targetpath,ipList,**(dict(passData)))
                utils_FabricApiFile.run_put()
                #Fobj = FileHandler(localpath,targetpath,list(ipList),**(dict(passData)))
                #Fobj.run_put()
                
            else:
                pass
            flag='1'
            return render_to_response('remote/upload_remote.html',{'remoteObj':remoteObj,'flag':flag,'upactive':'active'},RequestContext(request))
        
        else:
            pass
        
          
@login_required            
def download_remote(request):
    remoteObj = models.remote_user.objects.all()
    if request.method == 'POST':
        remoteFile = request.POST.get('InputPath',None)
        hostList = request.POST.get('downNoneDisplay',None)
        localpath = request.POST.get('localpath',None)
        
                 #调用utils_FabricApi中的方法，get文件存储
        flag = '0'
        if hostList and remoteFile:
            ipList,passData = getInfo(hostList)
            utils_FabricApiFile.tru_func(localpath, remoteFile, ipList,**(dict(passData)))
            utils_FabricApiFile.run_get()
            flag = '5'
            
        return render_to_response('remote/upload_remote.html',{'remoteObj':remoteObj,'flag':flag,'downactive':'active'},RequestContext(request))
   
   
         #如果不是post方式，就使用这个返回
    else:
        return render_to_response('remote/upload_remote.html',{'remoteObj':remoteObj,'downactive':'active'},RequestContext(request))


@login_required
def file_remote_log(request):
    
    #fileRemoteObj = models.FileRemote.objects.all().order_by('-id')         #用于按照id倒叙
    fileRemoteObj = models.FileRemote.objects.all().order_by('id').reverse() #用于按照id倒叙
    return render_to_response('remote/file_remote_log.html',{'fileRemoteObj':fileRemoteObj})
   
   
@login_required
def file_remote_delete(request,Idd):
    models.FileRemote.objects.get(id=Idd).delete()
    return redirect('/remote/file_remote_log/')
    
    
@login_required
def file_remote_deleteAll(request):
    models.FileRemote.objects.all().delete()
    return redirect('/remote/file_remote_log/')

# 前端ajax把要执行的命令传过来到这里处理
@login_required
def remote_run(request):
    if request.method == 'POST':
        #  {hostList:hostList,API:API,},   @login_required  @require_role('admin')
        obj = dict(request.POST)  #得到的是QUERYDICT,将其转换成字典类型。
                                                                    #才能使用字典的功能去获取里面的key-value信息         
        API = obj['Data[API]'][0]
        runCmd = obj['Data[runCmd]'][0]
        print obj['Data[choiceHost][]']
        print API
    
        ipList,passData = getInfoToremoteRun(obj['Data[choiceHost][]'])
        if API == 'Fabric':
            utils_FabricApiCmd.start_cmd(runCmd, ipList,**dict(passData))
            cmdresult = utils_FabricApiCmd.run_cmd()
            
        elif API =='Ansible':
            pass
        
        resultStr=json.dumps(cmdresult)
        #aaa = re.sub('\\r\\n','<br><br>',resultStr)
        cmdResultObj = resultStr.split("\\r\\n")
        cmdResultObj = '<br/>'.join(cmdResultObj)
        print "---------",cmdResultObj
        
               #把运行状态，结果#存储到数据库中
        cmdobj = models.runCmdLog(hostList=ipList,API=API,cmd=runCmd,cmdresult=cmdResultObj)
        cmdobj.save()
        
               #前端json  parse()用于反序列化 和stringify()用于序列化为字符串
               #如：JSON.parse(jsonText);  
        return HttpResponse(json.dumps(cmdResultObj)) 

@login_required
def cmd_remote_log(request):
    if request.method == 'GET':
        try:                                        #倒叙显示出结果记录
            RunRemoteObj = models.runCmdLog.objects.all().order_by('-id')
        except Exception,e:
            RunRemoteObj = None
            
        return render_to_response('remote/cmd_remote_log.html',{'RunRemoteObj':RunRemoteObj},)