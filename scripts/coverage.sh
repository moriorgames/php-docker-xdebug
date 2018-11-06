#!/usr/bin/env bash

docker build -t moriorgames/php-docker .
docker build -f DockerfileXdebug -t moriorgames/php-docker-xdebug .
docker run -td --name php_docker_xdebug moriorgames/php-docker-xdebug
docker exec -ti php_docker_xdebug php phars/phpunit.phar --coverage-html coverage
docker cp php_docker_xdebug:/app/coverage/ .
