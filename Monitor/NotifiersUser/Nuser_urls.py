#!/bin/env python2.7
#coding:utf-8
#code  by  mik 
#qiangchuan.wu

from django.conf.urls import url
import views 


urlpatterns = [
    url(r'^$',views.nuser_index,name="nuser_index"),
    
    url(r'^add/$',views.Add,name="nuser_Add"),
#     
    url(r'^del/(?P<idd>(\d?)+)$',views.Del,name="nuser_Del"),
    url(r'^edit/(?P<idd>(\d?)+)$',views.Edit,name="nuser_Edit"),
#    

]
