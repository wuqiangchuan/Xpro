#coding:utf-8
from __future__ import unicode_literals

from django.db import models

# Create your models here.



class HostName(models.Model):
    HostName=models.CharField(max_length=30,unique=True)
    HardInfo = models.ForeignKey('HardInfo',null=True)
    DiskInfo = models.ManyToManyField('DiskInfo')
    def __unicode__(self):
            return self.HostName
                 
class group(models.Model):                                                                                                     
    GroupName=models.CharField(max_length=30)                                                                                  
    def __unicode__(self):                                                                                                     
        return self.GroupName                                                                                                  
                                                                                                                                                                                                                                                         
class IDC(models.Model):                                                                                                       
    Place=models.CharField(u'IDC机房地址',max_length=50)                                                                                      
    D1=models.CharField(u'位于哪个机架',max_length=50) #哪个机架上的                                                                           
     
class Status(models.Model):
    status=models.CharField(max_length=10)
    def __unicode__(self):
        return self.status
        
class HardInfo(models.Model):

    Host=models.CharField(max_length=30) 
    System=models.CharField(max_length=30)
    Arch=models.CharField(max_length=12)
    Cpulogical=models.CharField(max_length=4)
    Cpupysic=models.CharField(max_length=4)
    
    Cpu=models.CharField(max_length=50)
    LocalIp = models.GenericIPAddressField(unique=True,null=True)
    PubIp = models.GenericIPAddressField(unique=True,null=True)
    
    Mac=models.CharField(max_length=22)
    
    Comment=models.CharField(max_length=300)
    UpdateTime=models.DateTimeField(auto_now=True)
    Type=models.ForeignKey('group',null=True)
    Status=models.ForeignKey('Status',null=True)
    IDC=models.ForeignKey('IDC',null=True)
    HostName = models.ForeignKey('HostName')
    def __unicode__(self):
        return self.Host
    
class DiskInfo(models.Model):
    FileSystem = models.CharField(max_length=120)
    Total = models.CharField(max_length=20)
    Used = models.CharField(max_length=20)
    Avail = models.CharField(max_length=20)
    UseP = models.CharField(max_length=5)
    MountedOn = models.CharField(max_length=50)
    UpdateTime = models.DateTimeField(auto_now=True) #每次更新都会更新其时间
    Host = models.ForeignKey('HostName')
    def __unicode__(self):
        return self.Host
        
class MemInfo(models.Model):
    Total = models.CharField(max_length=30)
    Used = models.CharField(max_length=30)
    Free = models.CharField(max_length=30)
    UpdateTime = models.DateTimeField(auto_now=True)
    Host = models.CharField(u'ipaddress',max_length=32)
    def __unicode__(self):
        return self.Host
    
class SwapInfo(models.Model):
    Total = models.CharField(max_length=30)
    Used = models.CharField(max_length=30)
    Free = models.CharField(max_length=30)
    UpdateTime = models.DateTimeField(auto_now=True)
    Host = models.CharField(u'ipaddress',max_length=32)
    def __unicode__(self):
        return self.Host
    
class CpuStat(models.Model):
    CpuIdle = models.FloatField()
    CpuIowait = models.CharField(max_length=20)
    CpuSystem = models.CharField(max_length=20)
    CpuUser = models.CharField(max_length=20)
    UpdateTime = models.DateTimeField(auto_now=True)
    Host = models.CharField(u'ipaddress',max_length=32)
    def __unicode__(self):
        return self.Host
    
class NetInOut(models.Model):
    EthName = models.CharField(max_length=30)
    InEth = models.CharField(max_length=30)
    OutEth = models.CharField(max_length=30)
    UpdateTime = models.DateTimeField(auto_now=True)
    Host = models.CharField(u'ipaddress',max_length=32)
    def __unicode__(self):
        return self.Host

class CpuLoad(models.Model):
     Load01 = models.CharField(max_length=10)
     Load05 = models.CharField(max_length=10)
     Load15 = models.CharField(max_length=10)
     UpdateTime=models.DateTimeField(auto_now=True)
     Host = models.CharField(u'ipaddress',max_length=32)
     def __unicode__(self):
        return self.Host
    
    