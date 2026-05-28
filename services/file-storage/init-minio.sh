#!/bin/sh

# Start MinIO server in background
minio server /data --console-address ":9001" &

# Wait for MinIO to be ready
sleep 5

# Configure MinIO client
mc alias set local http://localhost:9000 minioadmin minioadmin

# Create bucket for files
mc mb local/files --ignore-existing

# Set public read policy for the bucket
mc anonymous set download local/files

echo "MinIO initialized successfully!"

# Keep the container running
wait
