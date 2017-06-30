#coding:utf-8

from django.shortcuts import render, render_to_response,HttpResponseRedirect,redirect
from django.http.response import HttpResponse

from django.contrib.auth.decorators import login_required
from django.template import RequestContext
import json 
from devops import models
import utils_cmdbInfoUpdate 


from remote.utils_pagination import UsePagination


# Create your views here.
#asset   先检查是否登陆。
@login_required 
def asset(request,pages):
    #定义每页显示
    disNumObj = models.pageInfo.objects.all()
    for I in disNumObj:
        if I.CmdbHostPage is None or I.CmdbHostPage == '':
            disNum = 20
        else:
            disNum = int(I.CmdbHostPage)
            
    allCount = models.CmdbHost.objects.all().count()
   
    Pages,beforePage,afterPage,x,pages= UsePagination(pages, disNum, allCount)
#     print Pages,beforePage,afterPage,x,pages

    assetObj = models.CmdbHost.objects.all()[disNum*pages-disNum:disNum*pages]
    return render_to_response('asset/asset.html',{'assetObj':assetObj,'x':x,'Pages':Pages,'disNum':disNum,'beforePage':beforePage,'afterPage':afterPage},RequestContext(request))


@login_required
def displayNum(request):
    if request.method == 'POST':
        CmdbHostPage = request.POST.get('displayNum')
       
        if models.pageInfo.objects.values("CmdbHostPage").first():
            models.pageInfo.objects.update(CmdbHostPage=CmdbHostPage)
        else:
            pageInfo = models.pageInfo(CmdbHostPage=CmdbHostPage)
            pageInfo.save()
        
    return redirect('/asset/')


@login_required
def asset_add(request):
    if request.method == 'GET':
        return render_to_response('asset/asset_add.html',RequestContext(request))
    
    
@login_required
def asset_del(request):
    pass  #这个可能没有使用到。
    

@login_required
def asset_group(request,pages):
    
    disNumObj = models.pageInfo.objects.all()
    for I in disNumObj:
        if I.CmdbGroupPage is None or I.CmdbGroupPage == '':
            disNum = 20
        else:
            disNum = int(I.CmdbGroupPage)

    allCount = models.CmdbGroup.objects.all().count()
   
     
    Pages,beforePage,afterPage,x,pages= UsePagination(pages, disNum, allCount)
    print Pages,beforePage,afterPage,x,pages


        
        
    assetObj = models.CmdbGroup.objects.all()[disNum*pages-disNum:disNum*pages]
    return render_to_response('asset/asset_group.html',{'assetGroupObj':assetObj,'x':x,'Pages':Pages,'disNum':disNum,'beforePage':beforePage,'afterPage':afterPage},RequestContext(request))
    
    
    

########## --- ---ajax ----###### #########

@login_required
def displayGroupNum(request):
    if request.method == 'POST':
            CmdbGroupPage = request.POST.get('displayNum')
           
            if models.pageInfo.objects.values("CmdbGroupPage").first():
                models.pageInfo.objects.update(CmdbGroupPage=CmdbGroupPage)
            else:
                pageInfo = models.pageInfo(CmdbGroupPage=CmdbGroupPage)
                pageInfo.save()
            
    return redirect('/asset/asset_group/')

@login_required
def asset_add_host(request):
    if request.method == 'POST':
        print "ajax post"
        host = request.POST.get('hostname',None)
        pubip = request.POST.get('pubip',None)
        priip = request.POST.get('priip',None)
        comment = request.POST.get('comment',None)
        print comment
        
        #add = models.CmdbHost(hostname=host,pubip=pubip,ip=priip,comm=comment)
        #add.save()
        SaveHost = models.CmdbHost.objects.create(hostname=host,pubip=pubip,ip=priip,comm=comment)
        
        data={'host':host,'pubip':pubip,'priip':priip,'comment':comment}
      
        flag=1
        return render_to_response('asset/asset_add.html',{'flag':flag},RequestContext(request))
        #return HttpResponse(json.dumps(data))
   
    elif request.method == 'GET':
        flag=0
        return render_to_response('asset/asset_add.html',{'flag':flag},RequestContext(request))
    

#        这里用于更新 id 对应的信息 
@login_required
def asset_update_ajax(request):
    if request.method == 'POST':
        obj = dict(request.POST) 
        #  1-->linx，2-->kernel ,3-->cpuPysicalCount, 4-->cpu_core , 5--> cpu processor,  6-->cpu_maker
        CmdbList=["uname -s","uname -r","cat /proc/cpuinfo| grep 'physical id' |sort| uniq| wc -l","cat /proc/cpuinfo| grep 'cpu cores' |uniq | awk -F':' '{print $2}'","cat /proc/cpuinfo| grep 'processor'| wc -l","cat /proc/cpuinfo | grep 'model name' | uniq | awk -F':' '{print $2}'",]
      
        CmdbResult = []
        ipList,passData = utils_cmdbInfoUpdate.updateCmdbInfo(obj['Data'][0])
        utils_cmdbInfoUpdate.start_cmdBefore(ipList,**dict(passData))
        for I in CmdbList:
             utils_cmdbInfoUpdate.start_cmd(I)
             tempResult = utils_cmdbInfoUpdate.run_cmd()
#              tempResult = re.sub('^ +', '', tempResult, 1)
             CmdbResult.append(tempResult)
               
               #用于把获得的信息存储到数据库中， 第一个参数为返回结果的列表形式，第二为这个对应的主机地址
        callback = utils_cmdbInfoUpdate.SaveToDB(CmdbResult,ipList[0])
        print CmdbResult
         
        #updateId = request.POST.get('updateId',None)
        return HttpResponse(json.dumps(callback))
    
@login_required   
def asset_delete(request,Idd):
    models.CmdbHost.objects.get(id=Idd).delete()
    
    return redirect('/asset/')
    
@login_required
def asset_edit(request,Idd):
    if request.method == 'GET':
        editObj = models.CmdbHost.objects.get(id=Idd)
        
        return render_to_response('asset/asset_edit.html',{'editObj':editObj},RequestContext(request))

    if request.method == 'POST':
        
        host = request.POST.get('hostname',None)
        pubip = request.POST.get('pubip',None)
        priip = request.POST.get('priip',None)
        comment = request.POST.get('comment',None)
        
        editObj = models.CmdbHost.objects.get(id=Idd) #.update(hostname=host,pubip=pubip,ip=priip,comm=comment)
        
        #这段用于更新数据，如果数据没有发生改变也不会报错。-- 直接用update时，如数据没有发改变直接报错。=======不能偷懒======
        editObj.hostname = host 
        editObj.pubip = pubip 
        editObj.ip = priip
        editObj.comm = comment
        
        editObj.save()
        #修改完直接调转到资产列表。
        return redirect('/asset/')

@login_required
def asset_groupadd(request):
    if request.method == 'GET':
        hostObj = models.CmdbHost.objects.all()
        return render_to_response('asset/asset_groupadd.html',{'hostObj':hostObj},RequestContext(request))
    
    if request.method == 'POST':
        groupname = request.POST.get("groupname",None)
        comm = request.POST.get("comment",None)
                #在select 选择器，且前端name都是同一个的情况下，使用POST.getlist得到的是一个列表。而不是使用get()
        hosts = request.POST.getlist("host",None)  
        
        if groupname:
            groupObj = models.CmdbGroup.objects.create(groupname=groupname,comm=comm)
            for host in hosts:
                print host
                hostObj = models.CmdbHost.objects.get(id=host)
                groupObj.host.add(hostObj)
                
        return redirect('/asset/asset_group/')
        
@login_required
def asset_delelegroup(request,Idd):
    models.CmdbGroup.objects.get(id=Idd).delete()
    return redirect('/asset/asset_group/')
        
@login_required
def asset_editgroup(request,Idd):
    resultGroupHost = []
    resultGroupId = [] # --> 所有关联的id
    firstNoIngroup = []
    
    resultHost = []    # --> 所有未关联的ip
    
    editObj = models.CmdbGroup.objects.get(id=Idd)
    hostObj = models.CmdbHost.objects.all()
    #取出所有关联到host的ip地址
    for GroupHost in editObj.host.all():
        resultGroupHost.append(GroupHost.pubip)
        resultGroupId.append(int(GroupHost.id))
                
        #所有未关联的主机
    for host in hostObj:
        if host.pubip not in resultGroupHost:
            resultHost.append(host)
            firstNoIngroup.append(int(host.id))
            
    if request.method == 'GET':
        return render_to_response('asset/asset_editgroup.html',{'editObj':editObj,'hostObj':hostObj,'resultHost':resultHost},RequestContext(request))
    
    else:
        # POST method 
        lastRemove = []
        lastAdd = []
        
        updateGroup = models.CmdbGroup.objects.get(id=Idd)
        
        removehosts = request.POST.getlist('hosts')
        addhosts = request.POST.getlist('host')
        groupName = request.POST.get('groupname',None)
        comm = request.POST.get('comment',None)

        updateGroup.groupname = groupName
        updateGroup.comm = comm
        updateGroup.save()
       
       #将取到的列表的每一项转换成int类型，用于与GET返回时作比较，这样就知道谁发生了改变。
        removehosts = map(lambda x:int(x),removehosts)
        addhosts = map(lambda x:int(x),addhosts)
        
        for ADD in addhosts:
            if ADD not in resultGroupId:
                lastAdd.append(ADD)
        for DEL in removehosts:
            if DEL not in firstNoIngroup:
                lastRemove.append(DEL)
        
        updateGroup.host.add(*lastAdd)
        updateGroup.host.remove(*lastRemove)
  
        return redirect('/asset/asset_group/') 

@login_required 
def asset_idc(request,pages):
    if request.method == 'GET':
        #idcObj = models.IDC.objects.all()
        disNumObj = models.pageInfo.objects.all()
        for I in disNumObj:
            if I.IDCPage is None or I.IDCPage == '':
                disNum = 20
            else:
                disNum = int(I.IDCPage)
                
        allCount = models.IDC.objects.all().count()
            
            
            
        Pages,beforePage,afterPage,x,pages= UsePagination(pages, disNum, allCount)
        print Pages,beforePage,afterPage,x,pages
        
        assetObj = models.IDC.objects.all()[disNum*pages-disNum:disNum*pages]
        return render_to_response('asset/asset_idc.html',{'idcObj':assetObj,'x':x,'Pages':Pages,'disNum':disNum,'beforePage':beforePage,'afterPage':afterPage},RequestContext(request))
            
 
@login_required
def displayIdcNum(request):         
    if request.method == 'POST':
        IDCPage = request.POST.get('displayNum')
       
        if models.pageInfo.objects.values("IDCPage").first():
            models.pageInfo.objects.update(IDCPage=IDCPage)
        else:
            pageInfo = models.pageInfo(IDCPage=IDCPage)
            pageInfo.save()
            
        return redirect('/asset/asset_idc/')
        
        
  
#         return render_to_response('asset/asset_idc.html',{'idcObj':idcObj},RequestContext(request))
@login_required 
def asset_idcadd(request):
    if request.method == 'GET':
        hostObj = models.CmdbHost.objects.all()
        
        return render_to_response('asset/asset_idcadd.html',{'hostObj':hostObj},RequestContext(request))
    
    
    if request.method == 'POST':
        
        idcname = request.POST.get('idcname',None)
        bandwidth = request.POST.get('bandwidth',None)
        operator = request.POST.get('operator',None)
        tel_name = request.POST.get('tel_name',None)
        tel_phone = request.POST.get('tel_phone',None)
        comm = request.POST.get('comm',None) 
        
        addObj = request.POST.getlist('host')
        addObj = map(lambda x:int(x),addObj)
        
        idcObj = models.IDC.objects.create(idcname=idcname,bandwidth=bandwidth,operator=operator,tel_name=tel_name,tel_phone=tel_phone,comm=comm)
        
        idcObj.host.add(*addObj)
        
        
        return redirect('/asset/asset_idc/') 
        
@login_required
def IDC_delete(request,Idd):
    models.IDC.objects.get(id=Idd).delete()
    

    return redirect('/asset/asset_idc/')

@login_required
def IDC_edit(request,Idd):
    firstNoInidc = []
    firstInidc = []
    
    resultIdcHost = []
    resultHost = []
    
    hostObj = models.CmdbHost.objects.all()
    editObj = models.IDC.objects.get(id=Idd)
    
    for InIdc in editObj.host.all():
        resultIdcHost.append(InIdc.pubip)
        firstInidc.append(int(InIdc.id))

    for host in hostObj:
        if host.pubip not in resultIdcHost:
            resultHost.append(host)
            firstNoInidc.append(int(host.id))
     
    if request.method == 'GET':
        return render_to_response('asset/asset_idcedit.html',{'editObj':editObj,'resultHost':resultHost,'hostObj':hostObj},RequestContext(request))
    
    if request.method == "POST":
        lastRemove = []
        lastAdd = []
        
        removehosts = request.POST.getlist('hosts')
        addhosts = request.POST.getlist('host')
        
        idcname = request.POST.get('idcname',None)
        bandwidth = request.POST.get('bandwidth',None)
        operator = request.POST.get('operator',None)
        tel_name = request.POST.get('tel_name',None)
        tel_phone = request.POST.get('tel_phone',None)
        comm = request.POST.get('comm',None)
        
        editObj.idcname = idcname
        editObj.bandwidth = bandwidth
        editObj.operator = operator
        editObj.tel_name = tel_name
        editObj.tel_phone = tel_phone
        editObj.comm = comm
        editObj.idcname = idcname
        editObj.save()
        
        removehosts = map(lambda x:int(x),removehosts)
        addhosts = map(lambda x:int(x),addhosts)
        
        for ADD in addhosts:
            if ADD not in firstInidc:
                lastAdd.append(ADD)
        for DEL in removehosts:
            if DEL not in firstNoInidc:
                lastRemove.append(DEL)
                
                
        editObj.host.add(*lastAdd)
        editObj.host.remove(*lastRemove)
        
        return redirect('/asset/asset_idc/')
    