#!/bin/bash

echo "Stopping old container..."
docker compose down

echo "Building image without cache..."
docker compose build --no-cache --pull

echo "Starting container..."
docker compose up -d

echo "Done ✅"
