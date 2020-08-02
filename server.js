const http = require('http');

const server = http.createServer(function (request, response) {
  console.log('Request received');
  response.writeHead(200, { 'Content-Type': 'text/plain' });
  response.end('CI Tests: Hello from server.js. Attempt new feature PR\n');
});

server.listen(8080);

console.log('Server running at http://localhost:8080/');
