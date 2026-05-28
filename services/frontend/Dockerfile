# Frontend Service - Nginx serving Angular app
FROM nginx:alpine

# Copy the built Angular app (must be built before running docker build)
# Build context should be the project root
COPY ./dist/frontend /usr/share/nginx/html

# Copy nginx configuration
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
