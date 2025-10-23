docker pull mariadb:latest

docker run -d  --name data  -e MARIADB_RANDOM_ROOT_PASSWORD=yes -v ./create.sql:/docker-entrypoint-initdb.d/create.sql mariadb:latest

docker build -t php-mysqli .

docker container run -d --name http -p 8080:80 -v ./config/:/etc/nginx/conf.d -v ./php:/app nginx

docker container run -d --name script -v ./php:/var/www/html php:fpm

docker network create link_start

docker network connect link_start http

docker network connect link_start script

docker network connect link_start data
