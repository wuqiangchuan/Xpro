#coding:utf-8
from django.shortcuts import render, render_to_response
from django.http.response import HttpResponse


from serilalizer import ClientHander 
import json 
from MonitorDataSave import models as HWI
from comm import ReturnClientIP 
from django.views.decorators.csrf import csrf_exempt
# Create your views here.

def moindex(request):
    
    
    return render_to_response('Monitor/index.html')
    
def charts(request):
    
    return HttpResponse('charts ')


##########################################################################




def ClientConfig(request,idd):  #后一个参数client_id
    print "----client ip----",idd
    ConfigObj = ClientHander(idd)
    config = ConfigObj.fetch_configs()
    #print "some thins",config
    
    if config:
        
        #print "return instan",config
        return HttpResponse(json.dumps(config))
        
def ClientError(request):
    ErrorMsg='Access not found.  404 page'
    return HttpResponse(json.dumps(ErrorMsg))



#-------------------------------------监控得到的数据 --------------------------------------------
#{u'Iowait': 0.0, u'Idle': 92.69999999999999, u'User': 0.0, u'System': 0.0}
@csrf_exempt
def LinuxCPU(request):
    if request.method == 'POST':
        ReciveData = json.loads(request.body)
        print "Post LinuxCPU"
        try:
            #CIP = HWI.HostName.objects.get(HostName = ClientIP)
            HWI.CpuStat.objects.create(CpuIdle= ReciveData['Idle'],CpuIowait=ReciveData['Iowait'],CpuSystem=ReciveData['System'],CpuUser=ReciveData['User'],Host=ReciveData['IPaddr'])
            print "go to save LinuxCPU"
        except Exception,e:
            print e
        
        print type(ReciveData),ReciveData
    #return HttpResponse(json.dumps(ReceviedData)) 
    return HttpResponse('ok') 

#{u'lavg_5': u'0.11', u'lavg_15': u'0.19', u'lavg_1': u'0.10'}
@csrf_exempt
def LinuxLoad(request):
    if request.method == 'POST':
        ReciveData = json.loads(request.body)
        print ReciveData
        #ClientIP = ReturnClientIP(request)
        #CIP=HWI.HostName.objects.get(HostName=ClientIP)
        
        HWI.CpuLoad.objects.create(Load01=ReciveData['lavg_1'],Load05=ReciveData['lavg_5'],Load15=ReciveData['lavg_15'],Host=ReciveData['IPaddr'])

    #return HttpResponse(json.dumps(ReceviedData)) 
    return HttpResponse('ok') 

@csrf_exempt
def DiskUsed(request):
    if request.method == 'POST':
        ReciveData = json.loads(request.body)
        print ReciveData
        ClientIP = ReturnClientIP(request)
        CheckCIP = HWI.HostName.objects.get(HostName=ClientIP)
        
        '''if HWI.DiskInfo.objects.filter(Host_id=CIP.id):
            print "exsit....."
            for for I in ReciveData:
                HWI.DiskInfo.objects.update_or_create()
        else:
# [[u'/dev/mapper/cl-root', u'100G', u'7.2G', u'93G', u'8%', u'/'], [u'devtmpfs', u'3.8G', u'0', u'3.8G', u'0%', u'/dev'], [u'tmpfs', u'3.8G', u'88K', u'3.8G', u'1%', u'/dev/shm'], [u'tmpfs', u'3.8G', u'9.2M', u'3.8G', u'1%', u'/run'], [u'tmpfs', u'3.8G', u'0', u'3.8G', u'0%', u'/sys/fs/cgroup'], [u'/dev/sdb2', u'494M', u'169M', u'326M', u'35%', u'/boot'], [u'/dev/mapper/cl-home', u'50G', u'33M', u'50G', u'1%', u'/home'], [u'/dev/mapper/cl-var', u'50G', u'2.7G', u'48G', u'6%', u'/var'], [u'tmpfs', u'772M', u'52K', u'772M', u'1%', u'/run/user/0']]

            print "no exsit...." '''
        
        if not CheckCIP:
            obj = HWI.HostName.objects.create(HostName=ClientIP)
            print obj
            CIP=HWI.HostName.objects.get(HostName=ClientIP)
        else:
            CIP=HWI.HostName.objects.get(HostName=ClientIP)
            
        for I in ReciveData:
                if I[0] !='tmpfs':
                    #oob = HWI.DiskInfo.objects.update_or_create(FileSystem=I[0],Total=I[1],Used=I[2],Avail=I[3],UseP=I[4],MountedOn=I[5],Host=CIP)                   
                    print I,I[0],I[1]
                    #print type(oob)
                    #oob.hostname_set.add(CIP)
                    #CIP.DiskInfo.add(oob[id])
                    CIP.DiskInfo.update_or_create(FileSystem=I[0],Total=I[1],Used=I[2],Avail=I[3],UseP=I[4],MountedOn=I[5],Host=CIP)                   
           
                    print "DISK"
        
    #return HttpResponse(json.dumps(ReceviedData)) 
    return HttpResponse('ok') 

#{u'Total': 7715, u'Free': 5190}
@csrf_exempt
def MemLoad(request):
    if request.method == 'POST':
        ReciveData = json.loads(request.body)
        #print 'I am  Mem:',ReciveData
        #ClientIP = ReturnClientIP(request)
        #CIP=HWI.HostName.objects.get(HostName=ClientIP)
        #print CIP
        print "mem",ReciveData
        HWI.MemInfo.objects.create(Total=ReciveData['Total'],Free=ReciveData['Free'],Host=ReciveData['IPaddr'])
        
    #return HttpResponse(json.dumps(ReceviedData)) 
    return HttpResponse('ok') 


#{u'Total': 8191, u'Free': 8191}
@csrf_exempt
def SwapLoad(request):
    if request.method == 'POST':
        ReciveData = json.loads(request.body)
        print 'this is swap',ReciveData
        
        #ClientIP = ReturnClientIP(request)
        #CIP=HWI.HostName.objects.get(HostName=ClientIP)
        
        HWI.SwapInfo.objects.create(Total=ReciveData['Total'],Free=ReciveData['Free'],Host=ReciveData['IPaddr'])
        
    #return HttpResponse(json.dumps(ReceviedData)) 
    return HttpResponse('ok') 


#{u'System': u'CentOS Linux__7.3.1611', u'CpuLogical': 4, u'Host': u'node1.unull.cn', u'CpuPhysics': 2, u'Arch': u'x86_64__64bit', u'Cpu': u' Intel(R) Core(TM) i5-3337U CPU @ 1.80GHz', u'Mac': u'20:1a:06:e4:a5:9a'}
@csrf_exempt
def HardWareInfo(request):
    if request.method == 'POST':
        ReciveData = json.loads(request.body)
        print 'this is Hwinfo',ReciveData
        
        ClientIP = ReturnClientIP(request)
        #CIP=HWI.HostName.objects.get(HostName=ClientIP)
        CheckCIP = HWI.HostName.objects.filter(HostName=ClientIP)
        
               #先检查HostName是否存在
        
        if not CheckCIP:
            obj = HWI.HostName.objects.create(HostName=ClientIP)
            print obj
            CIP=HWI.HostName.objects.get(HostName=ClientIP)
        else:
            CIP=HWI.HostName.objects.get(HostName=ClientIP)
            
        if HWI.HardInfo.objects.filter(HostName_id=CIP.id):
            print "已经存在"
        else:
           oob =  HWI.HardInfo.objects.update_or_create(Host=ReciveData['Host'],System=ReciveData['System'],Cpulogical=ReciveData['CpuLogical'],Cpupysic=ReciveData['CpuPhysics'],Arch=ReciveData['Arch'],Cpu=ReciveData['Cpu'],Mac=ReciveData['Mac'],HostName=CIP)
           Check = HWI.HardInfo.objects.get(HostName=CIP)
           
           HWI.HostName.objects.filter(HostName=ClientIP).update(HardInfo=Check)
           
           print "ahh"
    return HttpResponse('ok')

