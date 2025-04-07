#!/bin/bash

if [  -f "./.env" ]; then
  echo ".env exists, no more configuration required."	
else
  echo "check readme for further configuration"
fi

# Create acme.json for Traefik if not present
if [ ! -f "./traefik/letsencrypt/acme.json" ]; then
  echo "Creating traefik/letsencrypt/acme.json..."
  mkdir -p ./traefik/letsencrypt
  touch ./traefik/letsencrypt/acme.json
  chmod 600 ./traefik/letsencrypt/acme.json
fi

sudo docker network create homeservarr_bridge 2&> /dev/null

sudo docker compose -f docker-compose.yml up -d
