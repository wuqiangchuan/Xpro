#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from django.conf.urls import url
import views 

urlpatterns = [
    
    url(r'^$',views.serindex,name="moidex"),
    url(r'^add/',views.add,name="services_add"),
    
    url(r'^del/(?P<idd>(\d?)+)$',views.Del, name="services_del"),
    url(r'^edit/(?P<idd>(\d?)+)$',views.edit,name="services_edit"),
    
]

