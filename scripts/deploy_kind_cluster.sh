kind create cluster --name juice-shop-cluster --config=kind-config.yaml

kind load docker-image juice-shop-frontend:latest --name juice-shop-cluster
kind load docker-image juice-shop-backend-api:latest --name juice-shop-cluster
kind load docker-image juice-shop-database:latest --name juice-shop-cluster

