#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from devops import models
import re 
import string
import smtplib
from conf import conf
import json

#文件系统                            容量       已用      可用     已用%       挂载点
#/dev/mapper/cl-root 100G   11G   90G   11%      /

def SaveDiskInfoBefore(ip,diskInfo):
    hostObj = models.CmdbHost.objects.get(pubip=ip)
    
    tempList = diskInfo[ip].split("\r\n")
    print tempList
    tempList.pop(0)
    resultList = []
#     tempList = map(lambda x:re.sub(' +',' ',tempList),tempList)
    for I in tempList:
        I = re.sub(' +',' ',I)
        resultList.append(I)
    print tempList
   
   #将每一行都设定为列表 如下,由此开始存储到数据库中
# [['/dev/vda1', '20G', '4.3G', '15G', '23%', '/']]
    Fdisk=[]
    for i in resultList:
        a = i.split(' ')
       
        Fdisk.append(a)
        
    
    
#     filesystem = models.CharField(u'文件系统',max_length=120)
#     total = models.CharField(u'总空间大小',max_length=20)
#     used = models.CharField(u'使用情况',max_length=20)
#     avail = models.CharField(u'可用情况',max_length=20)
#     usep = models.CharField(u'使用百分比',max_length=5)
#     mounted = models.CharField(u'挂载到哪',max_length=50)
#     Ttime = models.DateTimeField(u'更新时间',auto_now=True) #每次更新都会更新其时间
#     host = models.ForeignKey('CmdbHost') #外键，主机是谁。
   
    text={ip}
    for x in Fdisk:
        if x[0] == 'tmpfs' or x[0] == 'devtmpfs':
            pass
        else:  
            temp = re.search('(.*)%', x[4]) #把"%"去掉。只保留数字
            if int(temp.group(1)) >= conf.used_P:
                text.add(x[0])      #设定为一个set类型。如果这个大于90%则长度大于1，就执行报警。
                text.add(temp.group(1)+"%") 
            
            models.diskUsed.objects.update_or_create(filesystem=x[0],total=x[1],used=x[2],avail=x[3],usep=temp.group(1),mounted=x[5],host=hostObj)
#             models.diskUsed.objects.update_or_create(filesystem=x[0])
#             models.diskUsed.objects.update_or_create(total=x[1])
#             models.diskUsed.objects.update_or_create(used=x[2])
#             models.diskUsed.objects.update_or_create(avail=x[3])
#             models.diskUsed.objects.update_or_create(usep=temp.group(1))
#             models.diskUsed.objects.update_or_create(host=hostObj)
            #saveObj = models.diskUsed._do_update(filesystem=x[0],total=x[1],used=x[2],avail=x[3],usep=temp.group(1),mounted=x[5],host=hostObj)
            #saveObj.save()
            print "save ok"

    if len(text) > 1:
        obj = sendMsg(ip,conf.From,conf.Passwd,conf.To,conf.Smtp,conf.SmtpPort,json.dumps(list(text)))
        obj.sendmsg()


class sendMsg(object):

    def __init__(self,ip,From,Passwd,To,Smtp,SmtpPort,text):
        self.ip = ip 
        self.From = From
        self.Passwd = Passwd
        self.To = To 
        self.Smtp = Smtp
        self.SmtpPort = SmtpPort
        
        self.text = text
        self.SubObj = "磁盘使用率警告 " 
        
    def sendmsg(self):
        Body = string.join((
            "From: %s" %self.From,
            "To: %s" %self.To,
            "Subject: %s" %self.SubObj,
                        "",
              self.text
            
            ),"\r\n")

        server = smtplib.SMTP()
        server.connect(self.Smtp, self.SmtpPort)
        server.starttls()
        server.login(self.From, self.Passwd)
        server.sendmail(self.From, [self.To],Body)
        server.quit()
    
    
    
    
    