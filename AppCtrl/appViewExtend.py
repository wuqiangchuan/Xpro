#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from devops import models

from utils_redisSaveStatus import Rsave
from conf import conf



class appCtrl(object):
    def __init__(self,request,add):
        
        if add: #add用于判断是谁调用的，如果是提交添加的，那这里因为为真，执行下面的初始化。  否则就算ajax提交过来的一个ID而已。
            self.IP = request.POST.get('hostip',None)
            self.AppName = request.POST.get('AppName',None)
            self.port = request.POST.get('port',None)
            
            self.Path = request.POST.get('Path',None)
            self.startAction = request.POST.get('startAction',None)
            self.stopAction = request.POST.get('stopAction',None)
            self.restart = request.POST.get('restart',None)
        else:
            self.GetID = request.POST['Data']
        
    def addAPP(self):
        Hobj = models.CmdbHost.objects.get(id=self.IP)
        
        if self.Path == (None or '') or  self.AppName == (None or ''):
            return 'error'
        
        filterResult = models.AppCtrl.objects.filter(IPaddr=Hobj.pubip,AppMasterName=self.AppName,BasePath=self.Path).count()
        if filterResult >=1:
            flag = 'error'
            print filterResult
        
        else:
            saveObj = models.AppCtrl(IPaddr=Hobj.pubip,
                           AppMasterName=self.AppName,
                           AppPort      = self.port,
                           BasePath     = self.Path,
                           StartAction  = self.startAction,
                           StopAction   = self.stopAction,
                           RestartAction= self.restart,
                           )
                
            saveObj.save()
            print "save addAPP is finished..."
            flag = 'ok'
            
        return flag
        
        
    def delAPP(self):
        
        print self.GetID
                #当删除应用的时候，必须删除redis中的状态值
        getObj = models.AppCtrl.objects.get(id=self.GetID)
        R=Rsave(conf.RedisHost,conf.RedisPort)
        R.Hdel(getObj.IPaddr, getObj.AppMasterName)
        R.Hdel(getObj.IPaddr,getObj.AppPort)
        
        
        getObj.delete()
        
        flag='ok'
        
        return 'del finished.',flag 
        
        
    def stopApp(self):
        pass
        
        
    def updateStatus(self):
        pass


class appEdit(object):
    def __init__(self,request,Idd):
        self.request = request
        self.Idd = Idd 
        
        
    @property
    def getFunc(self):
            
        getObj = models.AppCtrl.objects.get(id=self.Idd)    
                #这里返回的页面必须要修改。--> 返回的修改结果中，IP地址必须不能变 ！！ 
                # 如果要修改IP地址，那必须把这个应用删除之后再添加才行。
                #这里无法使用直接响应客户端
        #return render_to_response('APP/edit.html',{"hostObj":getObj},RequestContext(self.request))
        return getObj
    
    @property
    def postFunc(self):
        getObj = models.AppCtrl.objects.get(id=self.Idd)
        R = Rsave(conf.RedisHost,conf.RedisPort)
        R.Hdel(getObj.IPaddr, getObj.AppMasterName)
        R.Hdel(getObj.IPaddr,getObj.AppPort)
        
        
        try:

            getObj.AppMasterName = self.request.POST.get('AppName',None)
        
            getObj.AppPort = self.request.POST.get('port',None)
            getObj.BasePath = self.request.POST.get('Path',None)
            getObj.StartAction = self.request.POST.get('startAction',None)
            getObj.StopAction = self.request.POST.get('stopAction',None)
            getObj.RestartAction = self.request.POST.get('restart',None)
            print self.request.POST.get('port',None),self.request.POST.get('Path',None),self.request.POST.get('startAction',None),self.request.POST.get('stopAction',None)
            
            getObj.save()
            flag='ok'
        except Exception,e:
            flag='error'
            
        return flag 
        
        