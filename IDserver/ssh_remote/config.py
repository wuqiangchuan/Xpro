from tornado.options import define


def init_config():
    define('port', default=7777, type=int, help='server listening port')
