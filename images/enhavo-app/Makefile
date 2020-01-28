SHELL := /bin/bash

clean:
	docker rmi enhavo/enhavo-app:base
	docker rmi enhavo/enhavo-app:7.2-fpm-latest
	docker rmi enhavo/enhavo-app:7.2-nginx-latest
	docker rmi enhavo/enhavo-app:7.2-apache-latest
	docker rmi enhavo/enhavo-app:7.3-fpm-latest
	docker rmi enhavo/enhavo-app:7.3-nginx-latest
	docker rmi enhavo/enhavo-app:7.3-apache-latest
	docker rmi enhavo/enhavo-app:7.4-fpm-latest
	docker rmi enhavo/enhavo-app:7.4-nginx-latest
	docker rmi enhavo/enhavo-app:7.4-apache-latest
		
base:
	docker build --no-cache -t enhavo/enhavo-app:base base

7.2-fpm-latest: base
	docker build --no-cache -t enhavo/enhavo-app:7.2-fpm-latest 7.2-fpm

7.2-nginx-latest: 7.2-fpm-latest
	docker build --no-cache -t enhavo/enhavo-app:7.2-nginx-latest 7.2-nginx

7.2-apache-latest: 7.2-fpm-latest
	docker build --no-cache -t enhavo/enhavo-app:7.2-apache-latest 7.2-apache

7.3-fpm-latest: base
	docker build --no-cache -t enhavo/enhavo-app:7.3-fpm-latest 7.3-fpm

7.3-nginx-latest: 7.3-fpm-latest
	docker build --no-cache -t enhavo/enhavo-app:7.3-nginx-latest 7.3-nginx

7.3-apache-latest: 7.3-fpm-latest
	docker build --no-cache -t enhavo/enhavo-app:7.3-apache-latest 7.3-apache

7.4-fpm-latest: base
	docker build --no-cache -t enhavo/enhavo-app:7.4-fpm-latest 7.4-fpm

7.4-nginx-latest: 7.4-fpm-latest
	docker build --no-cache -t enhavo/enhavo-app:7.4-nginx-latest 7.4-nginx

7.4-apache-latest: 7.4-fpm-latest
	docker build --no-cache -t enhavo/enhavo-app:7.4-apache-latest 7.4-apache

all: 7.2-fpm-latest 7.2-apache-latest 7.2-nginx-latest 7.3-fpm-latest 7.3-apache-latest 7.3-nginx-latest 7.4-fpm-latest 7.4-apache-latest 7.4-nginx-latest

push-latest:
	docker push enhavo/enhavo-app:7.2-nginx-latest
	docker push enhavo/enhavo-app:7.2-apache-latest
	docker push enhavo/enhavo-app:7.2-fpm-latest
	docker push enhavo/enhavo-app:7.3-nginx-latest
	docker push enhavo/enhavo-app:7.3-apache-latest
	docker push enhavo/enhavo-app:7.3-fpm-latest
	docker push enhavo/enhavo-app:7.4-nginx-latest
	docker push enhavo/enhavo-app:7.4-apache-latest
	docker push enhavo/enhavo-app:7.4-fpm-latest

tag:
    docker tag enhavo/enhavo-app:7.2-nginx-latest enhavo/enhavo-app:7.2-nginx-0.2
    docker tag enhavo/enhavo-app:7.2-apache-latest enhavo/enhavo-app:7.2-apache-0.2
    docker tag enhavo/enhavo-app:7.2-fpm-latest enhavo/enhavo-app:7.2-fpm-0.2
    docker tag enhavo/enhavo-app:7.3-nginx-latest enhavo/enhavo-app:7.3-nginx-0.2
    docker tag enhavo/enhavo-app:7.3-apache-latest enhavo/enhavo-app:7.3-apache-0.2
    docker tag enhavo/enhavo-app:7.3-fpm-latest enhavo/enhavo-app:7.3-fpm-0.2
    docker tag enhavo/enhavo-app:7.4-nginx-latest enhavo/enhavo-app:7.4-nginx-0.2
    docker tag enhavo/enhavo-app:7.4-apache-latest enhavo/enhavo-app:7.4-apache-0.2
    docker tag enhavo/enhavo-app:7.4-fpm-latest enhavo/enhavo-app:7.4-fpm-0.2

push-tag:
	docker push enhavo/enhavo-app:7.2-nginx-0.2
	docker push enhavo/enhavo-app:7.2-apache-0.2
	docker push enhavo/enhavo-app:7.2-fpm-0.2
	docker push enhavo/enhavo-app:7.3-nginx-0.2
	docker push enhavo/enhavo-app:7.3-apache-0.2
	docker push enhavo/enhavo-app:7.3-fpm-0.2
	docker push enhavo/enhavo-app:7.4-nginx-0.2
	docker push enhavo/enhavo-app:7.4-apache-0.2
	docker push enhavo/enhavo-app:7.4-fpm-0.2
