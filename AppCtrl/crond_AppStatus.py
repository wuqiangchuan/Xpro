#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from conf import conf
from apscheduler.scheduler import Scheduler
import utils_getApp_Cmd

cron_App = Scheduler(daemonic = False)
#直接设定更新间隔
@cron_App.interval_schedule(seconds=conf.getAppStatInterval)  


#这里的定时任务将在manage中引入才能被启用。一定要注意这代年
def getStatus():
    print "getstataus interval...."
    utils_getApp_Cmd.getAppStatus()
    
cron_App.start()