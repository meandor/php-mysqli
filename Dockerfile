FROM php:7-apache
RUN apt-get update && apt-get install -y php5-mysql && docker-php-ext-install -j$(nproc) mysqli
RUN a2enmod rewrite
