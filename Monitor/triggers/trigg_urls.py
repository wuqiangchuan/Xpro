#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####


from django.conf.urls import url
import views 


urlpatterns = [
    
    url(r'^$',views.triggerindex,name="triggerindex"),
    url(r'^add/',views.add,name="trigger_add"),
   
    url(r'^del/(?P<idd>(\d?)+)$',views.Del,name="trigger_Del"),
    
    url(r'^edit/(?P<idd>(\d?)+)$',views.edit,name="trigger_edit"),
    
    
    
]