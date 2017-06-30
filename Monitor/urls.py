#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from django.conf.urls import url, include
import views 
from template import tem_urls
from serverindex import serindex_urls
from triggers import trigg_urls
from services import ser_urls
from Monitor.hostgroup import hg_urls
from host import h_urls
import api_urls
import saveData_url 
import charts_urls

urlpatterns = [
    
    url(r'^$',views.moindex,name="moindex"),
    #url(r'^charts/',views.charts,name="charts"),
    
    url(r'^template/',include(tem_urls)),
    
    url(r'^serverindex/',include(serindex_urls)),
    url(r'^trigger/',include(trigg_urls)),
    
    url(r'^services/',include(ser_urls)),
    
    url(r'^hostgroup/',include(hg_urls)),
    
    url(r'^host/',include(h_urls)),
    
    #需要在客户端的url加上/Monitor/
    url(r'^api/',include(api_urls)),
    
    url(r'^stat/',include(saveData_url)),
    url(r'^charts/',include(charts_urls)),
    

]
