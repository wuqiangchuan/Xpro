# #!/bin/env python2.7
# #coding:utf-8
# ##### code  by  mik ####
# ##### qiangchuan.wu ####
# 
# 
# # from devops import models 
# # from remote import utils_FabricApiCmd

#



#这个用于定时获取状态。
def getAppStatus():
    from devops import models
    from remote import utils_FabricApiCmd
    from conf import conf
    from utils_redisSaveStatus import Rsave
   
    ipList = []
    passData = {}

    
    #userObj =  models.remote_user.objects.all()
    appObjAll = models.AppCtrl.objects.all()
    
    for appObj in appObjAll:
        
                #这里将会关联到3个表。这里如何跳过cmdb表？  
        IP = appObj.IPaddr
        cmdbHost = models.CmdbHost.objects.get(pubip = IP)
        
        userObj = cmdbHost.remote_user_set.all()
        
    #user = models.remote_user.objects.get(host.pubip=IP)
    
        #出现异常----当一个主机中存在多个需要监控的应用时,,,下面的appObj将会返回多个结果 .导致异常发生.
    
        for hostObj in userObj:
            
            ipList=[(hostObj.host.pubip)]
            passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
        
            #appObj = models.AppCtrl.objects.get(IPaddr=hostObj.host.pubip)
            
            print "appObj --",type(appObj)
             
                    #直接把获取主进程的状态，
            utils_FabricApiCmd.start_cmd('killall -0 %s &> /dev/null; echo $?' % appObj.AppMasterName, ipList,**dict(passData))
            appStatus = utils_FabricApiCmd.run_cmd()
            
            utils_FabricApiCmd.start_cmd("ss -tnlp | awk  '{print $4}' | egrep ':+%s$' &> /dev/null;echo $?" % appObj.AppPort, ipList,**dict(passData))
            appPort = utils_FabricApiCmd.run_cmd()
            
            print "start to go to get status .."
            print appObj.AppMasterName, appStatus, appObj.AppPort,appPort
                   #将状态信息存储到redis中 ，如:  
                            #        R.hset('127.0.0.1','mysqld','0')
      
            R = Rsave(conf.RedisHost,conf.RedisPort)
            R.Hset(appObj.IPaddr, appObj.AppMasterName, appStatus[appObj.IPaddr])
            R.Hset(appObj.IPaddr, appObj.AppPort, appPort[appObj.IPaddr])
          

#       SaveDiskInfoBefore(ipList[0], diskInfo)

def OneGetApp(id,cmd01=None):
    from devops import models
    from remote import utils_FabricApiCmd
    
    passData = {}
    
    TempObj =  models.CmdbHost.objects.get(id=id)
    
    userObj = TempObj.remote_user_set.all()
    
    for hostObj in userObj:
        ipList=[TempObj.pubip]
        passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
    
        utils_FabricApiCmd.start_cmd(cmd01, ipList,**dict(passData))
        diskInfo = utils_FabricApiCmd.run_cmd()
    
#         SaveDiskInfoBefore(ipList[0], diskInfo)















#下面这段出现异常，调用models时候。待修改。
# class GetPwdConn(object):
# 
#     
#     def __init__(self,cmd01):   #cmd01用于判断这个应用的进程名是否存在
#     
#                              #cmd02用于判断这个应用的端口是否启动
#         self.cmd01=cmd01
#         #self.cmd02=cmd02
#                                                                             #是否有没有监听的端口的应用进程？
#                                                                             #好吧，就有也不关心
#     def getUserInfo(self):
#         from devops import models 
# #         from remote import utils_FabricApiCmd
#         
#         ipList = []
#         passData = {}
#         userObj =  models.remote_user.objects.all()
#         
#         
#         for hostObj in userObj:
#             ipList=[(hostObj.host.pubip)]
#             passData[hostObj.username+"@"+hostObj.host.pubip+":"+hostObj.port] = hostObj.password
#         
#         return  ipList,passData
#  
#     def allCmd(self):
#         from devops import models 
#         from remote import utils_FabricApiCmd
#         ipList,passData=self.getUserInfo()
#         utils_FabricApiCmd.run_cmd(self.cmd01, ipList,**dict(passData))
#         cmdResult = utils_FabricApiCmd.run_cmd()
#         #return cmdResult
#         print cmdResult
#     
# 
# obj= GetPwdConn('killall -0 "mysql" ;echo $?')
#     
# obj.allCmd()    
#     