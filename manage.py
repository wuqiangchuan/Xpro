#!/usr/bin/env python
#coding:utf-8

import os
import sys
import commands

from diskused.disk_cron import cron_py
from AppCtrl.crond_AppStatus import cron_App

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "IDserver.settings")

    from django.core.management import execute_from_command_line
        
        #用于启动gateone
    commands.getstatusoutput('/etc/init.d/gateone restart')
    execute_from_command_line(sys.argv)
    
    