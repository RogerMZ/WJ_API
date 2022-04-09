#!/bin/bash

# Stop & Delete container if exists
docker stop curso_api || true && docker rm curso_api || true

