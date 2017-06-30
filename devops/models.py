#coding:utf-8
from __future__ import unicode_literals
from django.db import models
from sqlalchemy.sql.expression import true
from django.db.models.fields import CharField


# Create your models here.
class CmdbHost(models.Model):
    hostname = models.CharField(max_length=30)
    pubip = models.CharField(max_length=50)
    ip = models.CharField(max_length=50,null=True)
#[{u'123.207.86.123': 'Linux'}, {u'123.207.86.123': '2.6.32-573.el6.x86_64'}, {u'123.207.86.123': '0'}, {u'123.207.86.123': '1'}, {u'123.207.86.123': '1'}, {u'123.207.86.123': 'Intel(R) Xeon(R) CPU E5-26xx v3'}]

    cpu_Physical = models.CharField(max_length=4,null=True)
    cpu_core = models.CharField(max_length=4,null=True)
    cpu_processor = models.CharField(max_length=60,null=True)
    cpu_info = models.CharField(max_length=60,null=True)
   
    mem_info = models.CharField(max_length=60,null=True)
    system_info = models.CharField(max_length=60,null=True)
    system_kernel = models.CharField(max_length=80,null=True)
  
    comm = models.CharField(u'描述信息', max_length=300,null=True)
    group = models.ManyToManyField('CmdbGroup',null=True)
    
    def __unicode__(self):
        return self.hostname
    
class CmdbGroup(models.Model):
    
    groupname = models.CharField(max_length=30)
    comm = models.CharField(u'描述信息', max_length=300,null=True)
    host = models.ManyToManyField('CmdbHost')
    
    def __unicode__(self):
        return self.groupname

class IDC(models.Model):
    idcname = models.CharField(max_length=100)
    bandwidth = models.CharField(u'带宽',max_length=5,null=True)
    
    operator = models.CharField(u'运营商',max_length=30,null=True)
    tel_name = models.CharField(u'联系人',max_length=30,null=True)
    tel_phone = models.CharField(u'电话',max_length=20,null=True) 
    
    comm  =  models.CharField(u'备注信息',max_length=300,null=True)
    
    host = models.ManyToManyField('CmdbHost')
   
    def __unicode__(self):
        return self.idcname
    
class remote_user(models.Model):
    
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=100)
    port  = models.CharField(max_length=6)
    
    auth_method = (
          ('password','password'),
          ('ssh-key','ssh-key'),
        )
    
    auth_choice = models.CharField(choices=auth_method,max_length=10)
    
    host = models.ForeignKey('CmdbHost',null=True)
    
    def __unicode__(self):
        return self.username
    
#<<<<<<<<<<<<<<<<文件传输日志记录<<<<<<<<<<<<<<<<<<<
class FileRemote(models.Model):
    hostip = models.CharField(max_length=20)
    localfile = models.CharField(max_length=60)
    remotefile = models.CharField(max_length=60)
    action = (
        ('upload','上传'),
        ('download','下载'),
        )
    action_choice = models.CharField(choices=action,max_length=8)
    Ttime = models.DateTimeField(auto_now_add=True)
 
    resultAction = models.CharField(max_length=8)
    def __unicode__(self):
        return self.hostip
    
#<<<<<<<<<<<<<<<<命令执行日志记录<<<<<<<<<<<<<<<<<<<
class runCmdLog(models.Model):    
    hostList = models.CharField(max_length=80)
    cmd = models.CharField(max_length=80)
    cmdresult = models.TextField()

    Ttime = models.DateTimeField(auto_now_add=True)
    API = models.CharField(max_length=10)
    
    def __unicode__(self):
        return self.cmd
#<>>>>>>>>>>>>>>>>>>命令执行日志记录<>>>>>>>>>>>>>>>>>>>>>>>

#$$$$$$$$$$$$$$$$$$$$$ 分页设置 $$$$$$$$$$$$$$$$$$$$$$$$$$$$
class pageInfo(models.Model):
    CmdbHostPage = models.CharField(max_length=4,null=True)
    CmdbGroupPage = models.CharField(max_length=4,null=True)
    IDCPage = models.CharField(max_length=4,null=True)
    remote_userPage = models.CharField(max_length=4,null=True)
    FileRemotePage = models.CharField(max_length=4,null=True)
    runCmdLogPage = models.CharField(max_length=4,null=True)
    AppListPage = models.CharField(max_length=4,null=True)

#$$$$$$$$$$$$$$$$$$$$$ 分页设置 $$$$$$$$$$$$$$$$$$$$$$$$$$$$






#========================================================
#========================================================
#======================监控存储===========================
#========================================================
#========================================================
#========================================================
#========================================================
#--------------------------------- 磁盘使用情况监控数据存储 -------------------------------------
class diskUsed(models.Model):
    filesystem = models.CharField(u'文件系统',max_length=120)
    total = models.CharField(u'总空间大小',max_length=20)
    used = models.CharField(u'使用情况',max_length=20)
    avail = models.CharField(u'可用情况',max_length=20)
    usep = models.CharField(u'使用百分比',max_length=5)
    mounted = models.CharField(u'挂载到哪',max_length=50)
    Ttime = models.DateTimeField(u'更新时间',auto_now=True) #每次更新都会更新其时间
   
    host = models.ForeignKey('CmdbHost')                  #外键，主机是谁。
   
    def __unicode__(self):
        return self.host
 
  
class updateDisk(models.Model):
    Interval = models.CharField(u'自动更新硬盘使用率的时间',max_length=8)
    def __unicode__(self):
        return self.Interval
    
    
    
class AppCtrl(models.Model):
    
    IPaddr = models.CharField(u'ip地址',max_length=40)
    
    AppMasterName = models.CharField(u'主进程名称',max_length=20)
    AppPort = models.CharField(u'应用监听端口号',max_length=6)
    #killApp = models.CharField(u'杀死进程',max_length=30)
    
    BasePath = models.CharField(u'应用的启动脚本绝对路径',max_length=60)
    StartAction = models.CharField(u'启动应用时采用的动作',max_length=30) #如/etc/init.d/mariadb stop
    StopAction  = models.CharField(u'停止应用采用的动作',max_length=30)
    RestartAction = models.CharField(u'重启应用',max_length=30)

    def __unicode__(self):
        return self.IPaddr
  
#还需要设定一个表，用于存储是否对此分区的报警
#========================================================
#========================================================
#======================监控存储==========================
#========================================================
#========================================================
#========================================================
#========================================================

