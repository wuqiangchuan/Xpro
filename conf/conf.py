#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

#redis server
RedisHost = '127.0.0.1'
RedisPort = '6379'





#DiskUse
#更新硬盘使用信息 ，单位 s
diskInterval = 3000 #14400  #4个小时
used_P = 90   #使用了百分之 x%
#发送邮件报警:
From = 'wuqiangchuan@163.com'  #发送者
Passwd='18876160794wqc'        #发送者登陆密码
To = '1144858429@qq.com'       #接受者
Smtp = 'smtp.163.com'          #smtp服务器地址
SmtpPort = '25'                #smtp端口号，字符串类型



#Get app status
#更新间隔：单位s
getAppStatInterval = 3000

