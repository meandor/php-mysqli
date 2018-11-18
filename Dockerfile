FROM php:7.2-apache
RUN apt-get update && apt-get install -y zip git unzip && apt-get autoclean
RUN docker-php-ext-install -j$(nproc) mysqli
RUN a2enmod rewrite
