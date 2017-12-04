FROM php:fpm

LABEL maintainer "Ronny Trommer <ronny@no42.org>"

RUN apt-get update && \
    apt-get install -y unzip \
                       libfreetype6-dev \
                       libjpeg62-turbo-dev \
                       libpng-dev \
                       zlib1g-dev \
                       fcgiwrap && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd && \
    docker-php-ext-install -j$(nproc) zip
