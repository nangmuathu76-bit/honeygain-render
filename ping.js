const http = require('http');
const https = require('https');

// Tạo server đơn giản
const server = http.createServer((req, res) => {
  res.writeHead(200);
  res.end('Honeygain is running');
});

server.listen(process.env.PORT || 10000, () => {
  console.log('Ping server started');
});

// Ping chính mình mỗi 10 phút
const APP_URL = process.env.RENDER_EXTERNAL_URL;
if (APP_URL) {
  setInterval(() => {
    https.get(APP_URL, (res) => {
      console.log(`Ping: ${res.statusCode}`);
    }).on('error', (e) => {
      console.error(`Ping error: ${e.message}`);
    });
  }, 600000); // 10 phút
}
