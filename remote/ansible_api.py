#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from ansible.runner import Runner
from ansible.inventory import Inventory


result = Runner(
    #host_list= ['127.0.0.1','123.207.86.123'],
    module_name='shell',
    module_args='cat /etc/passwd',
    inventory=Inventory(host_list=['127.0.0.1','123.207.86.123']),
    
    
    
    
    #    resource
    #remote_user='root',
    #remote_port='22',
    #remote_pass='redhat',
    #pattern=   [{"hostname": "127.0.0.1119.29.205.114", "port": "81", "username": "root", "password": "redhat"}, ],
    )


data = result.run()

print data
