#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from Monitor import models

class Hobj(object):
    
    def __init__(self,request,idd=None):
        self.request = request
        if idd:
            self.idd = idd 
            
            
    def GetOne(self):
        
        return 'ok'
    
    def GetAll(self):
        
        return models.HostGroup.objects.all(),models.Templates.objects.all()
    
    
    def Add(self):
        host = self.request.POST.get('hostname',None)
        ipaddr = self.request.POST.get('ipaddr',None)
       
        
        hgIn = self.request.POST.getlist('hgIn')
        
        tempIn = self.request.POST.getlist('tempIn')
        
        
        monitor_by = self.request.POST.get('monitor_by')
        status = self.request.POST.get('status')
        memo = self.request.POST.get('comment',None)
        
        
        Sobj = models.Hosts.objects.create(name = host,ip_addr=ipaddr,monitor_by=monitor_by, status=status,memo = memo,)
        
        hgIn = map(lambda x:int(x), hgIn)
        tempIn = map(lambda x:int(x), tempIn)
        
        Sobj.host_groups.add(*hgIn)
        Sobj.templates.add(*tempIn)
        
        
        
        
    def Del(self):
        
        models.Hosts.objects.get(id=self.idd).delete()
        
        