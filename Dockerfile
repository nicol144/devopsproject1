# Use the official Nginx base image
FROM nginx:latest

# Optional: Set an environment variable to customize the welcome message
ENV WELCOME_MESSAGE="Welcome to my Nginx server!"

# Copy a custom configuration file (optional)
COPY nginx.conf /etc/nginx/nginx.conf

# Set a custom welcome message in the Nginx default index.html (optional)
RUN echo "$WELCOME_MESSAGE" > /usr/share/nginx/html/index.html

# Expose port 80 to make the Nginx web server accessible
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
