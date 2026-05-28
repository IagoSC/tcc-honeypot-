FROM minio/minio:latest

# Create directory for files
RUN mkdir -p /data/files

# Copy startup script
COPY init-minio.sh /init-minio.sh
RUN chmod +x /init-minio.sh

EXPOSE 9000 9001

# Start MinIO server
CMD ["/init-minio.sh"]
