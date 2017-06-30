#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from utils_getRemoteuser import getUserInfo
from conf import conf
from apscheduler.scheduler import Scheduler



cron_py = Scheduler(daemonic = False)
#直接设定更新间隔
@cron_py.interval_schedule(seconds=conf.diskInterval)  
#cron_py.cron_schedule(hours='02,08,12,16,22')

def disk():
    
    getUserInfo()
    
cron_py.start()