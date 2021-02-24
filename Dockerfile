# PHP
FROM php:7.4-apache
RUN apt-get update && apt-get install -y zlib1g-dev
RUN apt-get update && apt-get install -y libpng-dev
RUN apt-get update && apt-get install -y libicu-dev
RUN apt-get update && apt-get install -y libzip-dev
RUN apt-get update && apt-get install -y libxml2-dev
RUN apt-get update && apt-get install -y libjpeg-dev
RUN apt-get update && apt-get install -y libxslt-dev
RUN apt-get update && apt-get install -y libfreetype6-dev
RUN apt-get update && apt-get install -y g++
RUN docker-php-ext-install mysqli
RUN docker-php-ext-configure gd --with-jpeg --with-freetype && docker-php-ext-install gd
RUN docker-php-ext-install intl
RUN docker-php-ext-install zip
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install soap
RUN docker-php-ext-install xsl
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install sockets

# Apache
RUN a2enmod rewrite

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer -v

# Base Packages
RUN apt-get update
RUN apt-get -y install git wget curl nano unzip sudo vim net-tools