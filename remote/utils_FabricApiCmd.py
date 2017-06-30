#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####
from fabric.api import run,env,execute,parallel,task,settings,hide
import re 

#远程命令的初始化ip列表，密码字典
def start_cmd(cmd,ipList,**passData):
    env.hosts = list(ipList)
    env.passwords = dict(passData)
    env.MyCmd=cmd
   # env.Mycmd02=cmd02
    
@task
@parallel(pool_size=10)
def remote_cmd():
    try:
        with settings(hide('running'),warn_only=True):
            result = run(env.MyCmd)
            
    except Exception,e:
        result="run_error"
        
    return result

def run_cmd():
    result = execute(remote_cmd)
    
    return result