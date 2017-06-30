#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

#1, 去remote中调用已经保存的 username 和 password
#2, 调用 asset中的fabric api执行df -h，并对其格式化处理 。
#  asset的fabric api为asset.utils_cmdbInfoUpdate文件中

# from devops import models
# from remote import utils_FabricApiCmd
# from utils_saveDiskInfo import SaveDiskInfoBefore

def getUserInfo(cmd01='df -h'):
    from devops import models
    from remote import utils_FabricApiCmd
    from utils_saveDiskInfo import SaveDiskInfoBefore

    ipList = []
    passData = {}
    
    userObj =  models.remote_user.objects.all()
    for hostObj in userObj:
        ipList=[(hostObj.host.pubip)]
        print "iplist ========== ",ipList,"------",type(hostObj.host.pubip)
        
        passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
    
        utils_FabricApiCmd.start_cmd(cmd01, ipList,**dict(passData))
        diskInfo = utils_FabricApiCmd.run_cmd()
    
        SaveDiskInfoBefore(ipList[0], diskInfo)



def OneGetUserInfo(id,cmd01='df -h'):
    from devops import models
    from remote import utils_FabricApiCmd
    from utils_saveDiskInfo import SaveDiskInfoBefore

    passData = {}
    
    TempObj =  models.CmdbHost.objects.get(id=id)
    
    userObj = TempObj.remote_user_set.all()
    
    for hostObj in userObj:
        ipList=[TempObj.pubip]
        passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
    
        utils_FabricApiCmd.start_cmd(cmd01, ipList,**dict(passData))
        diskInfo = utils_FabricApiCmd.run_cmd()
    
        SaveDiskInfoBefore(ipList[0], diskInfo)



