#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####


from django.conf.urls import url
import views 


urlpatterns = [
    url(r'^$',views.h_index,name="h_index"),
    url(r'^add/$',views.Add,name="h_Add"),
    
    url(r'^del/(?P<idd>(\d?)+)$',views.Del,name="h_Del"),
    url(r'^edit/(?P<idd>(\d?)+)$',views.Edit,name="h_Edit"),
   
]
