FROM php:7.1-fpm-alpine

RUN set -ex && \
    apk --no-cache add \
    postgresql-dev

RUN docker-php-ext-install pdo pdo_pgsql

WORKDIR /usr/share/nginx/html
