#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from Monitor import models

class serindex(object):
    def __init__(self,request,idd=None):
        self.request=request
        
        if idd:
            self.idd=idd
            
    def Get(self):
        
        return models.ServiceIndex.objects.all()
    
    def GetOne(self):
        
        return models.ServiceIndex.objects.get(id=self.idd)
    
    def Add(self):
    
        return models.ServiceIndex.objects.all()
        
    
    def Edit(self):
        getId = models.ServiceIndex.objects.get(id=self.idd)
        
        
        name = self.request.POST.get('indexname',None)
        item_key = self.request.POST.get('indexkey',None)
        
        data_type = self.request.POST.get('data_type',None)
        comment = self.request.POST.get('comment',None)
        
        getId.name = name
        getId.item_key= item_key
        getId.data_type= data_type
        getId.memo= comment
        

        #getId(name=name,item_key=item_key,data_type=data_type,memo=comment)
        getId.save()
        
        
    def Post(self):
        name = self.request.POST.get('indexname',None)
        item_key = self.request.POST.get('indexkey',None)
        
        data_type = self.request.POST.get('data_type',None)
        comment = self.request.POST.get('comment',None)
        
        models.ServiceIndex.objects.create(name=name,item_key=item_key,data_type=data_type,memo=comment)
        
        
    
    def Del(self):
        models.ServiceIndex.objects.get(id=self.idd).delete()
        
        
    
    
    
    