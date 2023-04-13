
const http = require('http');
// Create a server object
const server = http.createServer((req, res) => {
  // Set response header
  res.writeHead(200, { 'Content-Type': 'text/plain' });

  // Write response body
  res.write('Hello, world!');
  res.end(); // End response
});

// Start the server on port 3000
server.listen(3000, () => {
  console.log('Server running on http://localhost:3000/');
});
