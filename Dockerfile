FROM php:7-fpm
RUN apt-get update -y && apt-get install -y zip unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo mbstring && docker-php-ext-install mysqli && docker-php-ext-install sockets

WORKDIR /var/www/html
