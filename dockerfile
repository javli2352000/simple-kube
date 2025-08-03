FROM php:7.4-apache

# Install PDO extension for MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copy website files to Apache root
COPY . /var/www/html/

# Expose the port Apache listens on
EXPOSE 80
# start apache in foreground
ENTRYPOINT [ "apache2-foreground" ]
