from http.server import BaseHTTPRequestHandler, HTTPServer
from urllib.parse import urlparse
import subprocess

class GetHandler(BaseHTTPRequestHandler):

    ls_l_cmd = ['ls','-l']

    def do_GET(self):
        parsed_path = urlparse(self.path)
        cons_res = subprocess.run(GetHandler.ls_l_cmd, stdout=subprocess.PIPE)
        
        # message = '\n'.join([
            # 'Simple Python3 HTTP server from Sergio',
            # 'ls -l command result: \n %s' % cons_res.stdout,
            # '',
            # ]).replace('\\n', '\n')

        message = "Hello from Sergio at IP: " + self.client_address[0]


        self.send_response(200)
        self.end_headers()
        message_bytes = str.encode(message)
        self.wfile.write(message_bytes)
        return

if __name__ == '__main__':
    from http.server import HTTPServer
    port = 8080
    server = HTTPServer(('localhost', port), GetHandler)
    print ('Starting server at http://localhost:' + str(port))
    server.serve_forever()
