FROM php:8.0.13-apache-buster

## installing php extensions for databases
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql mysqli pdo

COPY src/ /var/www/html

LABEL maintainer="Soeren Helms <soeren.helms@repronik.it>"
LABEL org.opencontainers.image.source = "https://github.com/HSoeren/curly-octo-doodle"
LABEL org.cod.build-date=$BUILD_DATE
LABEL org.cod.version=$VERSION
LABEL version="1.0"
LABEL description="Static Web Deployment with PHP 8.0 FPM and NGINX"
