#utiliser une image de base PHP avec Apache 
FROM php:8.2-apache

# Activer le module mysql
RUN docker-php-ext-install mysqli pdo_mysql

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install & enable Xdebug for code coverage reports
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
# Enable URL rewrite
RUN a2enmod rewrite && service apache2 restart

# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Configurer Apache pour utiliser /var/www/html/public comme racine du document
RUN sed -i 's|/var/www/html|/var/www/html/public|g' /etc/apache2/sites-available/000-default.conf
 