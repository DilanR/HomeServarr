#!/bin/bash

sudo docker network create backend
sudo docker network create frontend

sudo docker compose -f network.yaml up -d
sudo docker compose -f jellyfin.yaml up -d
sudo docker compose -f jellyfin-backend.yaml up -d
