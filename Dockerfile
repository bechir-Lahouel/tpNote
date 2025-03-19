# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the index.html file into the Nginx server's root directory
COPY index.html /usr/share/nginx/html/

# Expose the port that Nginx is listening on (default is 80)
EXPOSE 80