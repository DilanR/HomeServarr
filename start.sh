#!/bin/bash

sudo docker network create backend
sudo docker network create frontend

sudo docker compose -f docker-compose.network.yml up -d
sudo docker compose -f docker-compose.jellyfin.yml up -d
sudo docker compose -f docker-compose.jellyfin-backend.yml up -d
