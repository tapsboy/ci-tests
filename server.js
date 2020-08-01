const http = require('http');

const server = http.createServer(function (request, response) {
  response.writeHead(200, {'Content-Type': 'text/plain'});
  response.end("CI Tests: Hello from server.js\n");
});

server.listen(80);

console.log('Server running at http://127.0.0.1:80/');
