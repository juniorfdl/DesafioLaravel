#!/bin/bash

RUN usermod -u 1000 www-data
USER www-data

composer install
php artisan key:generate
php artisan migrate      
php-fpm
