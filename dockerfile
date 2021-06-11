FROM php:7.2-fpm-alpine 

RUN apk add postgresql-dev
RUN docker-php-ext-install pdo pdo_pgsql
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN apk add --update npm
RUN npm run dev
