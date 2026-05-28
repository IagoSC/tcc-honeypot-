# Database Service

PostgreSQL database for Juice Shop microservices.

## Configuration

- **Database**: juiceshop
- **User**: juiceshop
- **Password**: juiceshop (change in production!)
- **Port**: 5432

## Initialization

The database is automatically initialized with:
- Users table
- Products table
- Sample data (products and users)

## Sample Users

All users have password: `admin123`

- admin@juice-sh.op (role: admin)
- jim@juice-sh.op (role: customer)
- bender@juice-sh.op (role: customer)

## Usage

```bash
# Build
docker build -t juice-shop-database:latest .

# Run
docker run -d \
  -p 5432:5432 \
  -e POSTGRES_PASSWORD=juiceshop \
  --name juice-shop-db \
  juice-shop-database:latest

# Connect
psql -h localhost -U juiceshop -d juiceshop
```

## Volumes

For persistent storage:

```bash
docker run -d \
  -p 5432:5432 \
  -v postgres-data:/var/lib/postgresql/data \
  juice-shop-database:latest
```
