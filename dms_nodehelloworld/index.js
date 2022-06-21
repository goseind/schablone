const http = require('http'); // Modul http importieren
const hostname = '0.0.0.0'; // Zugriff auch von außen, Port 8080
const port = 8080;
const server = new http.Server((request, response) => { // Web Server erstellen // Statuscode 200=OK, MIME-Typ für Nutzdaten 'text/plain' response.writeHead(200, { 'Content-Type': 'text/plain' });
response.end('Hello World\n'); // Nutzdaten im HTTP Body });
server.listen(port, hostname, () => { // Web Server (Listener) starten console.log(`Server running at http://${hostname}:${port}/`);
});