#coding:utf-8

from django.conf.urls import url
import views

urlpatterns = [
   
    url(r'^(?P<pages>(\d?)+)$',views.appList, name='appList'),
    url(r'^addApp/',views.addApp, name='addApp'),
    
    url(r'^updateStatus/',views.updateStatus,name="updateStatus"),
    url(r'^stopApp/',views.stopApp,name="stopApp"),
    url(r'^delApp/',views.delApp,name="delApp"),
    
    url(r'deit_(?P<Idd>\d+)',views.edit,name="edit"),   #修改此app
    
    url(r'^restart/',views.restart,name="restart"),
    
    
]


