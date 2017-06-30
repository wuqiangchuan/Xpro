import paramiko
from paramiko.ssh_exception import AuthenticationException, SSHException
from tornado.websocket import WebSocketClosedError
from ioloop import IOLoop

import os
import sys
import django
BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.append(BASE_DIR)
os.environ.setdefault("DJANGO_SETTINGS_MODULE","IDserver.settings")
django.setup()

from devops import  models
#from  import settings



class Bridge(object):

    def __init__(self, websocket):
        self._websocket = websocket
        self._shell = None
        self._id = 0
        self.ssh = paramiko.SSHClient()

    @property
    def id(self):
        return self._id

    @property
    def websocket(self):
        return self._websocket

    @property
    def shell(self):
        return self._shell

    def open(self, data={}):
        self.ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
 #       host = data["host"]
        
        
        hostObj = models.CmdbHost.objects.get(pubip=data["host"])
        """
        Ousername = hostObj.remote_user_set.username
        Opassword = hostObj.remote_user_set.password
        Oport = hostObj.remote_user_set.port
#        
        """
        tusername = hostObj.remote_user_set.all()
        for I in tusername:
            Ousername = I.username
            Opassword = I.password
            Oport  = I.port
            """
        Ousername = tusername.username
        Opassword = tusername.password
        Oport = tusername.port
        """
#        remote_user = models.remote_user.objects.get(bind_host_user__host__ip=host)
        try:

            #if remote_user.auth_type_choice == "PASSWORD":
                self.ssh.connect(
                hostname=data['host'],
                port=int(Oport),
                username=Ousername,
                password=Opassword
                     )
                """
            elif remote_user.auth_type_choice == "SSH-KEY":
                key = paramiko.RSAKey.from_private_key_file(
                    '%s/id_%s_rsa' % (settings.RSA_PRIVATE_KEY_DIR, remote_user.user))
                self.ssh.connect(
                        hostname=host,
                        port=int(host_obj.port),
                        username=remote_user.user,
                        pkey=key,
                        timeout=60
                   
                        """
        except AuthenticationException:
            raise Exception("auth failed user:%s ,passwd:%s" %
                            (data["username"], data["password"]))
        except SSHException:
            raise Exception("could not connect to host:%s:%s" %
                            (data["hostname"], data["port"]))

        self.establish()

    def establish(self, term="xterm"):
        self._shell = self.ssh.invoke_shell(term)
        self._shell.setblocking(0)

        self._id = self._shell.fileno()
        IOLoop.instance().register(self)
        IOLoop.instance().add_future(self.trans_back())

    def trans_forward(self, data=""):
        if self._shell:
            self._shell.send(data)

    def trans_back(self):
        yield self.id
        connected = True
        while connected:
            result = yield
            if self._websocket:
                try:
                    self._websocket.write_message(result)
                except WebSocketClosedError:
                    connected = False
                if result.strip() == 'logout':
                    connected = False
        self.destroy()

    def destroy(self):
        self._websocket.close()
        self.ssh.close()
