FROM bitnami/php-fpm:latest
MAINTAINER Soeren Helms <soeren.helms@repronik.it>

COPY ./src/ /app

ENV PHP_MEMORY_LIMIT=512M
ENV PHP_MAX_EXECUTION_TIME=300
ENV PHP_POST_MAX_SIZE=50M
ENV PHP_UPLOAD_MAX_FILESIZE=50M

EXPOSE 80/tcp

LABEL org.cod.build-date=$BUILD_DATE
LABEL org.cod.version=$VERSION
LABEL version="1.0"
LABEL description="Static Web Deployment with PHP 8.0 FPM and NGINX"
