# Use an official Ubuntu image as the base image
FROM ubuntu:latest

# Set the maintainer information
MAINTAINER adityamoray11111@gmail.com

# Install required packages (Apache web server, zip, unzip)
RUN apt-get update && apt-get install -y apache2 zip unzip

# Add the website ZIP file from the specified URL to the /var/www/html directory
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Unzip the website ZIP file and remove it
RUN unzip photogenic.zip && rm photogenic.zip

# Expose port 80 for Apache web server
EXPOSE 80

# Start Apache web server in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
