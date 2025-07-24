# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the static website files to the Nginx HTML directory
COPY ./website/ /usr/share/nginx/html/

# Expose port 80 to serve the website
EXPOSE 8080

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]