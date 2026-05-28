#!/bin/bash

echo "🏗️  Building Juice Shop Microservices..."
echo ""

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print colored output
print_step() {
    echo -e "${BLUE}▶ $1${NC}"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

# use required nvm version
nvm use

# Check if docker is installed
if ! command -v docker &> /dev/null; then
    print_error "Docker is not installed. Please install Docker first."
    exit 1
fi

print_success "Docker is installed"

echo ""
print_step "Step 1: Building Angular Frontend"
if [ ! -d "services/frontend/dist/frontend" ]; then
    print_step "Angular app not built. Building now..."
    cd services/frontend
    
    if [ ! -d "node_modules" ]; then
        print_step "Installing npm dependencies..."
        npm install --legacy-peer-deps
    fi
    
    print_step "Building Angular app..."
    npm run build
    
    if [ $? -ne 0 ]; then
        print_error "Angular build failed"
        exit 1
    fi
    
    cd ../..
    print_success "Angular app built"
else
    print_success "Angular app already built"
fi

print_step "Building Frontend Docker image"
docker build -t juice-shop-frontend:latest  ./services/frontend/
if [ $? -eq 0 ]; then
    print_success "Frontend image built"
else
    print_error "Frontend build failed"
    exit 1
fi

echo ""
print_step "Step 2: Building Backend API"
docker build -t juice-shop-backend-api:latest ./services/backend-api
if [ $? -eq 0 ]; then
    print_success "Backend API image built"
else
    print_error "Backend API build failed"
    exit 1
fi

echo ""
print_step "Step 3: Building Database"
docker build -t juice-shop-database:latest ./services/database
if [ $? -eq 0 ]; then
    print_success "Database image built"
else
    print_error "Database build failed"
    exit 1
fi

echo ""
print_step "Step 4: Pulling MinIO image"
docker pull minio/minio:latest
if [ $? -eq 0 ]; then
    print_success "MinIO image pulled"
else
    print_error "MinIO pull failed"
    exit 1
fi


echo ""
echo "=================================================="
echo -e "${GREEN}✓ All services built successfully!${NC}"
echo "=================================================="
echo ""
echo "Next steps: Deploy to Kubernetes with Kind"
echo "    # Load images into Kind"
