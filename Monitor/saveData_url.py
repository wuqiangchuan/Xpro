#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####


from django.conf.urls import url
import views

urlpatterns = [
  
    url(r'^LinuxCPU/$',views.LinuxCPU),
    url(r'^LinuxLoad/$',views.LinuxLoad),
    url(r'^DiskUsed/$',views.DiskUsed),
    url(r'^MemLoad/$',views.MemLoad),
    url(r'^SwapLoad/$',views.SwapLoad),
    url(r'^HardWareInfo/$',views.HardWareInfo),
   
]