#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from fabric.api import env,task,parallel,put,execute,get
from fabric.context_managers import *
from fabric.contrib.console import confirm
from time import sleep
from devops import models
import fabric
import re 


#上传和下载是的调用入口
def tru_func(localpath,remotepath,host,**password):
    global lopath 
    global rempath

    env.hosts = list(host) 
    env.passwords = dict(password)

    lopath = localpath
    rempath = remotepath

    
@task
@parallel(pool_size=16)      #通过线程池来并发, 如果真实任务线程小于pool_size,则会重置pool_size为真实人物线程
def put_func():              #可以直接@parallel来使用,不用指定pool-size。
    with settings(hide('running','stdout'),warn_only=True):
        
        print env.host
        print env.passwords
        result = put(lopath,rempath)
        #if result.return_code == 0:
        
                #如果成功就把信息存储到数据库中
        if result:
            print "result ---> ",result
            action='upload'
            resultObj = models.FileRemote(hostip=env.host,localfile=lopath,remotefile=rempath,action_choice=action,resultAction='success')
            resultObj.save()
           
            print result[0]
        
    if result.failed:
        resultObj = models.FileRemote(hostip=env.host,localfile=lopath,remotefile=rempath,action_choice=action,resultAction='fail')
        resultObj.save()
      
      
@task
@parallel(pool_size=10)
def get_func():
    resultTmp = re.match('(.*)/(.*)', rempath)
    resultName = resultTmp.group(2)
    with settings(hide('running','stdout'),warn_only=True):
                     #src                          dest  #/tmp/download/
        result = get(rempath,"/tmp/download/%s_%s" % (env.host, resultName))
        if result:
            action='download'
            resultObj = models.FileRemote(hostip=env.host,localfile="/tmp/download/%s_%s" % (env.host, resultName),remotefile=rempath,action_choice=action,resultAction='success')
            resultObj.save()
    if result.failed:
        action='download'
        resultObj = models.FileRemote(hostip=env.host,localfile="/tmp/download/%s_%s" % (env.host, resultName),remotefile=rempath,action_choice=action,resultAction='fail')
        resultObj.save()
        
def run_put():
    execute(put_func)

def run_get():
    execute(get_func)






"""   以下用class来实现，但是在测试过程中发现无法找到env.hosts
    所以改用上面的函数来实现同样的功能
    
    
class FileHandler(object):
   
    def __init__(self,localPath,remotePath,ipList,**target):
        self.env = fabric.api.env
        self.put = fabric.api.put()
        self.localPaht = localPath
        self.remotePath = remotePath
        self.env.hosts = ipList
        self.env.passwords = target
        
    @task
    @parallel(pool_size=16)
    def put_func(self,):
        with settings(warn_only=True):
            result = self.put(self.localPaht,self.remotePath)
        if result.failed:
            pass
      
    @task
    @parallel(pool_size=10)
    def get_func(self):
        pass
        
        #将文件发送到remote
        
    def run_put(self):
        execute(self.put_func)
        print "heelo"
        
        #从remote把文件get到IDsever
    @task
    def run_get(self):
        execute(self.get_func)
"""
