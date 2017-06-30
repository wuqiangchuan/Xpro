#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from django.conf.urls import url
import views

urlpatterns = [
    url(r'^ssh_remote/(?P<pages>(\d?)+)$',views.ssh_remote,name='ssh_remote'),
    url(r'^displaySshNum/',views.displaySshNum,name='displaySshNum'),
    
    
    
    
    url(r'^upload_remote/',views.upload_remote,name='upload_remote'),
    url(r'^download_remote/',views.download_remote,name='download_remote'),
    
    #<<<<<<<<<<<,log
    url(r'^file_remote_log/',views.file_remote_log,name='file_remote_log'),
    url(r'^cmd_remote_log/',views.cmd_remote_log,name='cmd_remote_log'),
   
    url(r'^file_remote_delete_(?P<Idd>\d+)/',views.file_remote_delete,name="file_remote_delete"),
    url(r'^file_remote_deleteAll/',views.file_remote_deleteAll,name='file_remote_deleteAll'),
    url(r'^remote_useradd/',views.remote_useradd,name='remote_useradd'),
    
    url(r'^remote_user_delete_(?P<Idd>\d+)/',views.remote_user_delete,name="remote_user_delete"),
    url(r'^remote_user_edit_(?P<Idd>\d+)/',views.remote_user_edit,name="remote_user_edit"),
    
    #ajax command run
    url(r'^remote_run/',views.remote_run,name="remote_run"),
    
]