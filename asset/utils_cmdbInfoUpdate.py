#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from fabric.api import env,run,task,parallel,settings,hide,warn_only,execute
from devops import models



#[{u'127.0.0.1': 'Linux'}, {u'127.0.0.1': '3.10.0-514.el7.x86_64'}, {u'127.0.0.1': '1'}, {u'127.0.0.1': '2'}, {u'127.0.0.1': '4'}, {u'127.0.0.1': 'Intel(R) Core(TM) i5-3337U CPU @ 1.80GHz'}]
# 1-->linx，2-->kernel ,3-->cpuPysicalCount, 4-->cpu_core , 5--> cpu processor,  6-->cpu_maker

#     cpu_Physical = models.CharField(max_length=4,null=True)
#     cpu_core = models.CharField(max_length=4,null=True)
#     cpu_processor = models.CharField(max_length=60,null=True)
#     cpu_info = models.CharField(max_length=60,null=True)
def SaveToDB(Info,IP):
    tempObj = models.CmdbHost.objects.get(pubip=IP)
    
    tempObj.system_info   = Info[0][IP]
    tempObj.system_kernel = Info[1][IP]
    tempObj.cpu_Physical  = Info[2][IP]
    tempObj.cpu_core      = Info[3][IP]
    tempObj.cpu_processor = Info[4][IP]
    tempObj.cpu_info      = Info[5][IP]
                    
    tempObj.save()
    
    print "save is finished"
    return [Info[0][IP],Info[1][IP],Info[2][IP],Info[3][IP],Info[4][IP],Info[5][IP]]
    
    
def updateCmdbInfo(hostID):
    passData = {}
#   ipList,passData = utils_getHostInfo.getInfoToremoteRun(hostID) #还是返回一个主机列表和pswd的字典
    ipList = []
    cmObj = models.CmdbHost.objects.get(id=hostID)
    a = cmObj.remote_user_set.all()
    ipList.append(cmObj.pubip)
    for hostObj in a:
        passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
    return ipList,passData
    
#111111111111111
#远程命令的初始化ip列表，密码字典
def start_cmdBefore(ipList,**passData):
    env.hosts = list(ipList) 
    env.passwords = dict(passData)
    
#22222222222222222    
def start_cmd(cmd):
    env.MyCmd=cmd
    
#33333333333333333
@task
@parallel(pool_size=10)
def remote_cmd():
    with settings(hide('running'),warn_only=True):
        result = run(env.MyCmd)
######################这里应该去捕捉连接错误的#######################################
#############################################################
    return result

def run_cmd():
    result = execute(remote_cmd)
    return result 


def cmdbHandler():
    pass