# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the website files to the container
COPY ./website/ /usr/src/app/

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Start the web server
CMD ["npm", "start"]