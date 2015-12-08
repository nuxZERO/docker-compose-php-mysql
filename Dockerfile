FROM php:7.0-apache

RUN apt-get update
    && apt-get install -y libpng12-dev libjpeg-dev libcurl4-openssl-dev libmcrypt-dev libsqlite3-dev libpq-dev libxml2-dev \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd bcmath opcache curl fileinfo hash iconv json mbstring pdo pdo_sqlite pdo_mysql pdo_pgsql phar session sockets simplexml xml xmlrpc zip

VOLUME /var/www/html
