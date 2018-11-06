Sample project php xdebug
=========================

# Docker integration

An easier way to have the project running is having docker, you no need anything else to run the test, the project or the code coverage.

```
# Build docker image
$ docker build -t moriorgames/php-docker .
# Run docker container
$ docker run -td --name php_docker moriorgames/php-docker
# If you want to run the code coverage on your computer and see the results I've prepared a container with Xdebug
# Build docker image with xdebug
$ docker build -f DockerfileXdebug -t moriorgames/php-docker-xdebug .
# Run docker container
$ docker run -td --name php_docker_xdebug moriorgames/php-docker-xdebug
# Run the code coverage inside container
$ docker exec -ti php_docker_xdebug php phars/phpunit.phar --coverage-html coverage
# Extract the code coverage to your current folder to see the html report
$ docker cp php_docker_xdebug:/app/coverage/ .
```

Or you can run the script:
```bash
sh scripts/coverage.sh
```
