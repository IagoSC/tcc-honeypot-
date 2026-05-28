# Frontend Service

Angular SPA served via Nginx.

## Build

```bash
# First build the Angular app
cd ../../juice-shop/frontend
npm install
npm run build

# Then build the Docker image
cd ../../services/frontend
docker build -t juice-shop-frontend:latest .
```

## Run

```bash
docker run -p 8080:80 juice-shop-frontend:latest
```

## Configuration

- **Port**: 80 (internal), mapped to 8080 externally
- **Backend API**: Proxied to `http://backend-api:3000`
- **File Storage**: Proxied to `http://file-storage:9000`
