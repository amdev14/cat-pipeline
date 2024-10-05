# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom configuration file (if you have one)
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy static HTML files to the default Nginx public folder
COPY ./html /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]