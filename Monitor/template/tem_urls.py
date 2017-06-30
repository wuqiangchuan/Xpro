#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from django.conf.urls import url
import views

urlpatterns = [
    
    url(r'^$',views.template,name="template"),
    
    url(r'^add/$',views.add,name="template_add"),
    
    url(r'^del/(?P<idd>(\d?)+)$',views.tempdel,name="template_del"),
    
    url(r'^edit/(?P<idd>(\d?)+)$',views.tempedit,name="template_edit"),
    
    
    
    #url(r'^IDC_delete_(?P<Idd>\d+)/',views.IDC_delete,name="IDC_delete"),
    
]
