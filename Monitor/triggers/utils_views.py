#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from Monitor import models
from cgitb import enable
class triggerObj(object):
    
    def __init__(self,request,idd=None):
        self.request = request 
        if idd:
            self.idd = idd 
            
    def GetAll(self):
        
        return models.Triggers.objects.all()
    
    def GetOne(self):
        return models.Triggers.objects.get(id=self.idd)
    
    
    
    def Add(self):
                #创建触发器
        name = self.request.POST.get('triggername',None)
        expression = self.request.POST.get('expression',None)
        sericety  =  self.request.POST.get('sericety',None)
        
        enabled = self.request.POST.get('enabled',None)
        
        
        memo = self.request.POST.get('comment',None)
        
        if enabled:
            flag=True
        else:
            flag=False
        
        print name,expression,sericety,enabled,memo
            
        models.Triggers.objects.create(name=name,expression=expression,sericety=sericety,enabled=flag,memo=memo)
        

    
    def Edit(self):
        editObj = models.Triggers.objects.get(id=self.idd)
        if self.request.method == 'GET':
            return editObj 
    
        elif self.request.method == 'POST':
            name = self.request.POST.get('triggername',None)
            expression = self.request.POST.get('expression',None)
            sericety  =  self.request.POST.get('sericety',None)
            enabled = self.request.POST.get('enabled',None)
            memo = self.request.POST.get('comment',None)
            
            if enabled:
                flag=True
            else:
                flag=False

            editObj.name = name 
            editObj.expression = expression
            editObj.sericety = sericety 
            editObj.enabled = flag 
            editObj.memo = memo 
         
            editObj.save()

        
        else:
            pass

    
    
    def Del(self):
        models.Triggers.objects.get(id=self.idd).delete()