SHELL := /bin/bash

clean:
	docker rmi enhavo/enhavo-app:base
	docker rmi enhavo/enhavo-app:7.2-fpm
	docker rmi enhavo/enhavo-app:7.2-nginx
	docker rmi enhavo/enhavo-app:7.2-apache
	docker rmi enhavo/enhavo-app:7.3-fpm
	docker rmi enhavo/enhavo-app:7.3-nginx
	docker rmi enhavo/enhavo-app:7.3-apache
	docker rmi enhavo/enhavo-app:7.4-fpm
	docker rmi enhavo/enhavo-app:7.4-nginx
	docker rmi enhavo/enhavo-app:7.4-apache
		
base:
	docker build --no-cache -t enhavo/enhavo-app:base base

7.2-fpm: base
	docker build --no-cache -t enhavo/enhavo-app:7.2-fpm 7.2-fpm

7.2-nginx: 7.2-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.2-nginx 7.2-nginx

7.2-apache: 7.2-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.2-apache 7.2-apache

7.3-fpm: base
	docker build --no-cache -t enhavo/enhavo-app:7.3-fpm 7.3-fpm

7.3-nginx: 7.3-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.3-nginx 7.3-nginx

7.3-apache: 7.3-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.3-apache 7.3-apache

7.4-fpm: base
	docker build --no-cache -t enhavo/enhavo-app:7.4-fpm 7.4-fpm

7.4-nginx: 7.4-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.4-nginx 7.4-nginx

7.4-apache: 7.4-fpm
	docker build --no-cache -t enhavo/enhavo-app:7.4-apache 7.4-apache

all: 7.2-fpm 7.2-apache 7.2-nginx 7.3-fpm 7.3-apache 7.3-nginx 7.4-fpm 7.4-apache 7.4-nginx

push:
	docker push enhavo/enhavo-app:7.2-nginx
	docker push enhavo/enhavo-app:7.2-apache
	docker push enhavo/enhavo-app:7.2-fpm
	docker push enhavo/enhavo-app:7.3-nginx
	docker push enhavo/enhavo-app:7.3-apache
	docker push enhavo/enhavo-app:7.3-fpm
	docker push enhavo/enhavo-app:7.4-nginx
	docker push enhavo/enhavo-app:7.4-apache
	docker push enhavo/enhavo-app:7.4-fpm