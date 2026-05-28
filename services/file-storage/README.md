# File Storage Service

MinIO object storage service for file uploads and static assets.

## Features

- S3-compatible object storage
- Web console for management
- Public read access for static files

## Configuration

- **Access Key**: minioadmin
- **Secret Key**: minioadmin (change in production!)
- **API Port**: 9000
- **Console Port**: 9001

## Usage

```bash
# Build
docker build -t juice-shop-file-storage:latest .

# Run
docker run -d \
  -p 9000:9000 \
  -p 9001:9001 \
  --name juice-shop-storage \
  juice-shop-file-storage:latest
```

## Access

- **API**: http://localhost:9000
- **Console**: http://localhost:9001
  - Login: minioadmin / minioadmin

## Buckets

- `files` - Public read access for uploaded files

## Upload Files

```bash
# Using MinIO client
mc alias set mystore http://localhost:9000 minioadmin minioadmin
mc cp myfile.jpg mystore/files/

# Using AWS CLI
aws --endpoint-url http://localhost:9000 \
    s3 cp myfile.jpg s3://files/
```

## Integration

Files are accessible via:
- Direct URL: `http://localhost:9000/files/<filename>`
- Through frontend proxy: `/ftp/<filename>`
