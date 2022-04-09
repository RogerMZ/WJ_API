#!/bin/bash

# Stop & Delete container if exists
docker stop curso_api || true && docker rm curso_api || true

# Run container application
docker run -itd --name curso_api -p 3000:3000 --restart always --env-file /home/rogermz/wssiscom.env rogermz/curso_service_api:1.0

