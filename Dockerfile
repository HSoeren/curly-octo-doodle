FROM bitnami/php-fpm:latest
MAINTAINER Soeren Helms <soeren.helms@repronik.it>

COPY ./src/ /app

ENV PHP_MEMORY_LIMIT=512M
ENV PHP_MAX_EXECUTION_TIME=300
ENV PHP_POST_MAX_SIZE=50M
ENV PHP_UPLOAD_MAX_FILESIZE=50M

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.version=$VERSION \
