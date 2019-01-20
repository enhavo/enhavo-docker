SHELL := /bin/bash

clean:
	docker rmi xqweb/enhavo-capistrano:7.2-nginx
	docker rmi xqweb/enhavo-capistrano:7.2-apache


7.2-nginx:
	docker build --no-cache -t xqweb/enhavo-capistrano:7.2-nginx images/7.2-nginx

7.2-apache:
	docker build --no-cache -t xqweb/enhavo-capistrano:7.2-apache images/7.2-apache

all: 7.2-nginx 7.2-apache

run-nginx:
	docker run -d -it --rm -p 8001:80 -p 2201:22 -v /root/.ssh/:/root/.ssh/ --name symfony-capistrano xqweb/enhavo-capistrano:7.2-nginx

run-apache:
	docker run -d -it --rm -p 8001:80 -p 2201:22 -v /root/.ssh/:/root/.ssh/ --name symfony-capistrano xqweb/enhavo-capistrano:7.2-apache

push:
	docker push xqweb/enhavo-capistrano:7.2-nginx
	docker push xqweb/enhavo-capistrano:7.2-apache