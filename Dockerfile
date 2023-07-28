# Use the official Apache base image
FROM httpd:latest

# Optional: Set an environment variable to customize the welcome message
ENV WELCOME_MESSAGE="Welcome to my Apache server!"

# Copy a custom configuration file (optional)
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# Set a custom welcome message in the Apache default index.html (optional)
RUN echo "$WELCOME_MESSAGE" > /usr/local/apache2/htdocs/index.html

# Expose port 80 to make the Apache web server accessible
EXPOSE 80

# Start Apache when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
