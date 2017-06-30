#coding:utf-8
from django.conf.urls import url

import views 
urlpatterns = [
    # serverindex
    url(r'^$',views.serverindex,name="serverindex"),
    
    url(r'^add/',views.add,name="serverindex_add"),
    url(r'^del/(?P<idd>(\d?)+)$',views.Del,name="serverindex_Del"),
    
    url(r'^edit/(?P<idd>(\d?)+)$',views.edit,name="serverindex_edit"),
    
    
]