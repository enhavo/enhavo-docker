SHELL := /bin/bash

clean:
	docker rmi enhavo/enhavo-app:base
	docker rmi enhavo/enhavo-app:7.2-fpm
	docker rmi enhavo/enhavo-app:7.2-nginx
	docker rmi enhavo/enhavo-app:7.2-apache

base:
	docker build --no-cache -t enhavo/enhavo-app:base base

7.2-fpm: base
	docker build --no-cache -t enhavo/enhavo-app:7.2-fpm 7.2-fpm

7.2-nginx: 7.2-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.2-nginx 7.2-nginx

7.2-apache: 7.2-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.2-apache 7.2-apache

all: 7.2-nginx 7.2-apache

run-nginx:
	docker run -d -it --rm -p 8001:80 -p 2201:22 -v /root/.ssh/:/root/.ssh/ --name enhavo-app enhavo/enhavo-app:7.2-nginx

run-apache:
	docker run -d -it --rm -p 8001:80 -p 2201:22 -v /root/.ssh/:/root/.ssh/ --name enhavo-app enhavo/enhavo-app:7.2-apache

push:
	docker push enhavo/enhavo-app:7.2-nginx
	docker push enhavo/enhavo-app:7.2-apache
	docker push enhavo/enhavo-app:7.2-fpm