# Experiment 3: Sample Lightweight Web Application Dockerfile
FROM nginx:alpine

# Metadata
LABEL maintainer="harisaravananm"
LABEL description="DevOps Lab Experiment 3 Container Demo"

# Copy custom application into Nginx document root
COPY app/index.html /usr/share/nginx/html/index.html

# Expose standard HTTP port
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
