#!/bin/bash

echo "📦 Preparing Angular Frontend..."
echo ""

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

print_step() {
    echo -e "${BLUE}▶ $1${NC}"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}


## Check if Angular app is already built
if [ -d "services/frontend/dist/frontend" ]; then
    print_success "Angular app already built at services/frontend/dist/frontend"
    exit 0
fi

print_step "Angular app not found. Building..."


#  Check if services/frontend directory exists
if [ ! -d "services/frontend" ]; then
    print_error "services/frontend directory not found!"
    echo "Please ensure the services/frontend directory exists"
    exit 1
fi

cd services/frontend

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    print_step "Installing npm dependencies..."
    npm install --legacy-peer-deps
    
    if [ $? -ne 0 ]; then
        print_error "npm install failed"
        exit 1
    fi
    print_success "Dependencies installed"
fi


# Build Angular app
print_step "Building Angular app (this may take a few minutes)..."
npm run build

if [ $? -ne 0 ]; then
    print_error "Angular build failed"
    exit 1
fi

cd ../..


print_success "Angular app built successfully!"
