# Use an nginx base image to serve the static files
FROM nginx:alpine

# Replace default nginx welcome page with "Hello, World!"
RUN echo "Hello, World!" > /usr/share/nginx/html/index.html

# Expose port 80 to access the web server
EXPOSE 80 

# Start nginx to serve the message
CMD ["nginx", "-g", "daemon off;"]

