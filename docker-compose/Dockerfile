# Use the official WordPress image as the base image
FROM wordpress:latest

# Update package lists and install any necessary packages
RUN apt-get update && \
    apt-get install -y less vim

# Copy custom configuration files or scripts into the container
# Assuming you have a custom configuration file in the current directory
COPY wp-config.php /var/www/html/wp-config.php

# Set the command to start WordPress
CMD ["apache2-foreground"]
