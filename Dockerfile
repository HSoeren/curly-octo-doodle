FROM bitnami/php-fpm:latest
MAINTAINER Soeren Helms <soeren.helms@repronik.it>

ENV COMPOSER_MEMORY_LIMIT -1
ENV COMPOSER_PATH /usr/local/bin
ENV COMPOSER_EXIT_ON_PATCH_FAILURE 1
ENV PHP_FPM_ERROR_LOG /proc/self/fd/2
ENV PHP_PID_DIR /var/run/php

COPY ./conf /conf
COPY ./scripts /scripts

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.version=$VERSION \
