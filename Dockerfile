# Use the official Nginx image as the base image
FROM nginx:latest

# Copy website files to the default Nginx HTML directory
COPY ./website/ /usr/share/nginx/html/

# Expose port 80 to allow external access
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]