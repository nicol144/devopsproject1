# Use CentOS as the base image
FROM centos:latest

# Set the maintainer information
MAINTAINER adityamoray11111@gmail.com

# Install required packages
RUN yum install -y httpd zip unzip

# Add the website ZIP file from the specified URL to the /var/www/html directory
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Unzip the photogenic.zip file
RUN unzip photogenic.zip

# Copy the contents of photogenic/ directory to the current working directory
RUN cp -rvf photogenic/* .

# Remove the photogenic/ directory and the ZIP file
RUN rm -rf photogenic photogenic.zip

# Set the default command to start Apache HTTP server in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Expose port 80 to access the web server
EXPOSE 80 22
