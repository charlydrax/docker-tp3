1.
docker container run -d --name http -p 8080:80 -v ./ETAPE1/config/:/etc/nginx/conf.d -v ./ETAPE1/php:/app nginx

1.
docker container run -d --name script -v ./ETAPE1/php:/var/www/html php:fpm

3.
docker network create link_start

4.
docker network connect link_start http

5.
docker network connect link_start script
