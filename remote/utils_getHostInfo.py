#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from devops import models
from sqlalchemy.sql.expression import false

#将前端传递过来的host列表id号取得，并去数据库查找对应的用户名和密码。
def getInfo(host):
    hostList = host
    sp = hostList.split(',')
    ipList = []
    passData={}
    for I in sp:
        hostObj = models.remote_user.objects.get(id=I)
        passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
        ipList.append(hostObj.host.pubip)
    return ipList,passData


#class fabric_put(object):
    
def getInfoToremoteRun(host):
    hostList = host
    ipList = []
    passData={}
   
    for I in hostList:
        hostObj = models.remote_user.objects.get(id=I)
        passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
        ipList.append(hostObj.host.pubip)
    return ipList,passData
