FROM php:7.0-apache

RUN buildDeps=" \
      libbz2-dev \
      libmysqlclient-dev \
      libfreetype6-dev \
      libicu-dev \
      libjpeg-dev \
      libmcrypt-dev \
      libpng12-dev \
      libpq-dev \
      libcurl4-openssl-dev \
      libsqlite3-dev \
      libxml2-dev \
    " \
    && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y $buildDeps \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd bcmath opcache curl fileinfo hash iconv json mbstring pdo pdo_sqlite pdo_mysql pdo_pgsql phar session sockets simplexml xml xmlrpc zip \
    && a2enmod rewrite

VOLUME /var/www/html
