#!/bin/bash
cd /etc/matrix-synapse/conf.d
echo "turn_uris: [ "turns:equipo2turn.duckdns.org?transport=udp", "turns:equipo2turn.duckdns.org?transport=tcp" ] #cambiar dominio
turn_shared_secret: "Ic8AsUCAIkJhBCOBD41wGr8kGdgsB9damhJ8XyxEnwWOkkpdi6QupJM5HfNixQ3v" #poner la clave que te dieron en el turn
turn_user_lifetime: 86400000
turn_allow_guests: True" > turn.yaml