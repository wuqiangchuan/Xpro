#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from Monitor import models

class servicesObj(object):
    
    def __init__(self,request,idd=None):
        self.request = request 
        
        if idd:
            self.idd = idd 
            
    def GetAll(self):
        return models.Service.objects.all()
    
    
    def GetOne(self):
        return models.Service.objects.get(id=self.idd)
     
    def serIndex(self):
        return models.ServiceIndex.objects.all()
    
    
    def add(self):
        name = self.request.POST.get('servicename',None)
        interval = self.request.POST.get('intarval',None)
        plugin_name = self.request.POST.get('plugin_name',None)

        memo = self.request.POST.get('memo',None)
        
        
        addObj = self.request.POST.getlist('serIndexName')
       
        addObj = map(lambda x:int(x),addObj)
        
        idcObj = models.Service.objects.create(name=name,interval=int(interval),plugin_name=plugin_name,memo=memo)
        
        idcObj.items.add(*addObj)
        
          
    def Del(self):
        models.Service.objects.get(id=self.idd).delete()
        
    
    def edit(self):
        
            pass
                
    
            
             
        
        
        
        
        
        