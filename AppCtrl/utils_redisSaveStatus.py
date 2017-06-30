#coding:utf-8
'''
Created on 2017年4月6日
@author: qiangchuan.wu 
'''

import redis
from conf.conf import RedisHost,RedisPort

class Rsave(object):
    def __init__(self,RedisHost,RedisPort):
        self.redisHost = RedisHost
        self.redisPort = RedisPort
        
        self.R = redis.Redis(host=self.redisHost,port=self.redisPort,db=0)
        
        
    def Hset(self,remoteHost,app,value):
        
    
        self.R.hset(remoteHost,app,value)
#        self.R.set('app', 'appname')
    
    def Hget(self,remoteHost,app):
        
        #{'127.0.0.1':"{'mysqld':0,'nginx':1}"}
        
        return self.R.get(remoteHost,app)
        #resultall = self.R.hgetall('remoteHost')
        
        
        
    def Hgetall(self,remoteHost):
        return self.R.hgetall(remoteHost)


    def Hdel(self,remoteHost,Name=None):
        if Name:
            self.R.hdel(remoteHost,Name)
            return 'ok'
        
        else:
            return "error"
        
        
        
aaa = Rsave(RedisHost,RedisPort)



