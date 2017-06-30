#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from django.conf.urls import url
import views

urlpatterns = [
    
    url(r'^$',views.getUser,name="getUser"),
    url(r'^tmpUpdate/(?P<Idd>\d+)/',views.tmpUpdate,name="tmpUpdate"),
    
    
    #url(r'^IDC_delete_(?P<Idd>\d+)/',views.IDC_delete,name="IDC_delete"),
    
]
