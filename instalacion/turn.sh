#Autor: Sergio Alejandro Hernandez Moreno
#19/01/2024
#----------------------------------------------------
#!/bin/bash
sudo apt update
sudo apt install coturn -y
sudo apt update
sudo apt install certbot -y
sudo apt update
sudo apt install pwgen -y
sudo certbot certonly --standalone -d equipo2turn.duckdns.org -m shernandezm02@educantabria.es --agree-tos --no-eff-email -n #cambiar dominio y email
KEY=$(pwgen -s 64 1)
cd /etc
echo "listening-port=3478
tls-listening-port=5349
relay-threads=0
min-port=49152
max-port=65535
use-auth-secret
static-auth-secret=$KEY
realm=equipo2turn.duckdns.org #cambiar dominio
syslog
cert=/etc/letsencrypt/live/equipo2turn.duckdns.org/fullchain.pem #cambiar ruta
pkey=/etc/letsencrypt/live/equipo2turn.duckdns.org/privkey.pem #cambiar ruta" > turnserver.conf