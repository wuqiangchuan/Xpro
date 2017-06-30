#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from django.conf.urls import url
import views

urlpatterns = [
    url(r'^asset_add/',views.asset_add,name='asset_add'),
    url(r'^(?P<pages>(\d?)+)$',views.asset,name='asset'),
    url(r'^asset_group/(?P<pages>(\d?)+)$',views.asset_group,name='asset_group'),
    
    url(r'^asset_add_host',views.asset_add_host,name='asset_add_host'),
    url(r'^asset_update_ajax/',views.asset_update_ajax,name="asset_update_ajax"),
    url(r'^asset_delete_(?P<Idd>\d+)/',views.asset_delete,name="asset_delete"),
    url(r'^asset_edit_(?P<Idd>\d+)/',views.asset_edit,name="asset_edit"),
    url(r'^displayNum/',views.displayNum,name="displayNum"),
    url(r'^displayGroupNum/',views.displayGroupNum,name="displayGroupNum"),
    url(r'^displayIdcNum/',views.displayIdcNum,name="displayIdcNum"),
   
    #资产组
    url(r'^asset_groupadd/',views.asset_groupadd,name="asset_groupadd"),
    url(r'^asset_deletegroup_(?P<Idd>\d+)/',views.asset_delelegroup,name="asset_delelegroup"),
    url(r'^asset_editgroup_(?P<Idd>\d+)/',views.asset_editgroup,name="asset_editgroup"),
    
    
    
    #IDC
    url(r'^asset_idc/(?P<pages>(\d?)+)$',views.asset_idc,name="asset_idc"),
    url(r'^asset_idcadd/',views.asset_idcadd,name="asset_idcadd"),
    url(r'^IDC_edit_(?P<Idd>\d+)/',views.IDC_edit,name="IDC_edit"),
    url(r'^IDC_delete_(?P<Idd>\d+)/',views.IDC_delete,name="IDC_delete"),
    
    
]
