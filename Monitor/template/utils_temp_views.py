#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from Monitor import models

class temp(object):
    def __init__(self,request,idd=None):
        self.request = request
        if idd:
            self.idd = idd
        
        
    def Get(self):
        
        return models.Templates.objects.all()
        
    def GetAdd(self):
        serverObj= models.Service.objects.all()
        triggers = models.Triggers.objects.all()
        return serverObj,triggers
        
        
    def Add(self):
    
        name = self.request.POST.get('tempname',None)

        serverList = self.request.POST.getlist('Server')
        triggeList = self.request.POST.getlist('Triggers')
        
        serverList = map(lambda x:int(x), serverList)
        triggeList = map(lambda x:int(x), triggeList)
        
        obj = models.Templates.objects.create(name=name)
        
        obj.service.add(*serverList)
        obj.triggers.add(*triggeList)
        
        
    def Del(self):
        
        
        models.Templates.objects.get(id=self.idd).delete()
        
        
   
        
        
        
        
        