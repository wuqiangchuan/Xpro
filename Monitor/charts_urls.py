#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####


from django.conf.urls import url
import charts_views 

urlpatterns = [
    
    url(r'^$',charts_views.index,name="charts_index"),
    url(r'^host/(?P<IP>(.*))$',charts_views.getOne,name="charts_getOne"),
    url(r'^test_charts/$',charts_views.test_charts,name="test_charts"),
    url(r'^cputest/$',charts_views.cputest,name="cputest"),
    
    
]
