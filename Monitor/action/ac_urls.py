#coding:utf-8
'''
Created on 2017年7月5日

@author: root
'''

from django.conf.urls import url
import views 
 

urlpatterns = [
    
    url(r'^$',views.ac_index,name="ac_index"), 
    url(r'^add/$',views.Add,name="ac_Add"),
#     
#     url(r'^del/(?P<idd>(\d?)+)$',views.Del,name="hg_Del"),
#     url(r'^edit/(?P<idd>(\d?)+)$',views.Edit,name="hg_Edit"),
   
]
