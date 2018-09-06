FROM php:7.2-apache

RUN docker-php-ext-install pdo_mysql

RUN cd /etc/apache2/mods-enabled/ && \
    ln -s ../mods-available/rewrite.load rewrite.load

#COPY files/php.ini /usr/local/etc/php/
ENV APACHE_DOCUMENT_ROOT=/var/www/html/app/webroot

COPY files/apache2.conf /etc/apache2/apache2.conf

RUN sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" /etc/apache2/sites-available/*.conf
RUN sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" /etc/apache2/conf-available/*.conf
