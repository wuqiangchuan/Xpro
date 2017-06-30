#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from django.conf.urls import url
import views 


urlpatterns = [
    
    url(r'^$',views.hg_index,name="hg_index"),
    url(r'^add/$',views.Add,name="hg_Add"),
    
    url(r'^del/(?P<idd>(\d?)+)$',views.Del,name="hg_Del"),
    url(r'^edit/(?P<idd>(\d?)+)$',views.Edit,name="hg_Edit"),
   
]
