import os
import tornado.ioloop
import tornado.web
import tornado.httpserver
import tornado.options
from tornado.options import options
from config import init_config
from ioloop import IOLoop
import handlers


def main():
    init_config()
    options.parse_config_file("webssh.conf")
    app = tornado.web.Application([(r"/ws", handlers.WSHandler),])
    http_server = tornado.httpserver.HTTPServer(app)
    http_server.listen(options.port)
    IOLoop.instance().start()
    tornado.ioloop.IOLoop.instance().start()


if __name__ == "__main__":
    main()