#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from Monitor import models

class extend_views(object):
    
    def __init__(self,request,idd=None):
        self.request = request 
        if idd:
            self.idd=idd 
            
            
    def temp(self):
        return models.Templates.objects.all()
        
    def Add(self):
        
        name = self.request.POST.get('hgname',None)
        memo = self.request.POST.get('comment',None)
        tempList = self.request.POST.getlist('tempIn')
        
        
        tempList = map(lambda x:int(x), tempList)
        
        Sobj = models.HostGroup.objects.create(name=name,memo=memo)
       
        Sobj.templates.add(*tempList)

    
    def Del(self):
        models.HostGroup.objects.get(id=self.idd).delete()
    
    
    