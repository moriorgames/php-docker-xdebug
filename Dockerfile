# Build command:
# docker build -t moriorgames/php-docker .
# Run command:
# docker run -td --name php_docker moriorgames/php-docker
FROM        php:7.1.23-cli-alpine3.7
MAINTAINER  MoriorGames "moriorgames@gmail.com"

# Create Application directory
RUN         apk add --no-cache bash

# Create Application directory
RUN         mkdir -p /app
COPY        . /app
WORKDIR     /app
RUN         chown www-data:www-data /app -R

# Composer variables
ENV         COMPOSER_HOME /app

# Build project
RUN         php /app/phars/composer.phar install --optimize-autoloader
