# Use the official Nginx image as the base image
FROM nginx:latest

# Copy website files to the appropriate directory
COPY ./website/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]