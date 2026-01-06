.PHONY: build-all base \
  php74-fpm php74-nginx php74-apache \
  php80-fpm php80-nginx php80-apache \
  php81-fpm php81-nginx php81-apache \
  php82-fpm php82-nginx php82-apache \
  php83-fpm php83-nginx php83-apache \
  php84-fpm php84-nginx php84-apache \
  php85-fpm php85-nginx php85-apache

NO_CACHE ?= --no-cache
PLATTFORM ?= linux/amd64,linux/arm64,linux/arm/v7

build-all: base \
  php74-fpm php74-nginx php74-apache \
  php80-fpm php80-nginx php80-apache \
  php81-fpm php81-nginx php81-apache \
  php82-fpm php82-nginx php82-apache \
  php83-fpm php83-nginx php83-apache \
  php84-fpm php84-nginx php84-apache \
  php85-fpm php85-nginx php85-apache

base:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:base images/base

php74-fpm:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:7.4-fpm-latest images/7.4-fpm
php74-nginx:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:7.4-nginx-latest images/7.4-nginx
php74-apache:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:7.4-apache-latest images/7.4-apache

php80-fpm:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.0-fpm-latest images/8.0-fpm
php80-nginx:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.0-nginx-latest images/8.0-nginx
php80-apache:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.0-apache-latest images/8.0-apache

php81-fpm:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.1-fpm-latest images/8.1-fpm
php81-nginx:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.1-nginx-latest images/8.1-nginx
php81-apache:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.1-apache-latest images/8.1-apache

php82-fpm:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.2-fpm-latest images/8.2-fpm
php82-nginx:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.2-nginx-latest images/8.2-nginx
php82-apache:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.2-apache-latest images/8.2-apache

php83-fpm:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.3-fpm-latest images/8.3-fpm
php83-nginx:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.3-nginx-latest images/8.3-nginx
php83-apache:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.3-apache-latest images/8.3-apache
	
php84-fpm:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.4-fpm-latest images/8.4-fpm
php84-nginx:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.4-nginx-latest images/8.4-nginx
php84-apache:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.4-apache-latest images/8.4-apache
	
php85-fpm:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.5-fpm-latest images/8.5-fpm
php85-nginx:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.5-nginx-latest images/8.5-nginx
php85-apache:
	docker buildx build --platform $(PLATTFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.5-apache-latest images/8.5-apache