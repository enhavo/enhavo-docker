.PHONY: build-all base \
  php74-fpm-build php74-nginx-build php74-apache-build \
  php80-fpm-build php80-nginx-build php80-apache-build \
  php81-fpm-build php81-nginx-build php81-apache-build \
  php82-fpm-build php82-nginx-build php82-apache-build \
  php83-fpm-build php83-nginx-build php83-apache-build \
  php84-fpm-build php84-nginx-build php84-apache-build \
  php85-fpm-build php85-nginx-build php85-apache-build

NO_CACHE ?= --no-cache
PLATFORM ?= linux/amd64,linux/arm64
VERSION ?= latest

build-all: base \
  php74-fpm-build php74-nginx-build php74-apache-build \
  php80-fpm-build php80-nginx-build php80-apache-build \
  php81-fpm-build php81-nginx-build php81-apache-build \
  php82-fpm-build php82-nginx-build php82-apache-build \
  php83-fpm-build php83-nginx-build php83-apache-build \
  php84-fpm-build php84-nginx-build php84-apache-build \
  php85-fpm-build php85-nginx-build php85-apache-build

push-all: \
  php74-fpm-push php74-nginx-push php74-apache-push \
  php80-fpm-push php80-nginx-push php80-apache-push \
  php81-fpm-push php81-nginx-push php81-apache-push \
  php82-fpm-push php82-nginx-push php82-apache-push \
  php83-fpm-push php83-nginx-push php83-apache-push \
  php84-fpm-push php84-nginx-push php84-apache-push \
  php85-fpm-push php85-nginx-push php85-apache-push

base:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:base images/base

# 7.4
php74-fpm-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:7.4-fpm-latest images/7.4-fpm
php74-fpm-push:
	docker tag enhavo/enhavo-app:7.4-fpm-latest enhavo/enhavo-app:7.4-fpm-$(VERSION)
	docker push enhavo/enhavo-app:7.4-fpm-$(VERSION)

php74-nginx-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:7.4-nginx-latest images/7.4-nginx
php74-nginx-push:
	docker tag enhavo/enhavo-app:7.4-nginx-latest enhavo/enhavo-app:7.4-nginx-$(VERSION)
	docker push enhavo/enhavo-app:7.4-nginx-$(VERSION)

php74-apache-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:7.4-apache-latest images/7.4-apache
php74-apache-push:
	docker tag enhavo/enhavo-app:7.4-apache-latest enhavo/enhavo-app:7.4-apache-$(VERSION)
	docker push enhavo/enhavo-app:7.4-apache-$(VERSION)

# 8.0
php80-fpm-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.0-fpm-latest images/8.0-fpm
php80-fpm-push:
	docker tag enhavo/enhavo-app:8.0-fpm-latest enhavo/enhavo-app:8.0-fpm-$(VERSION)
	docker push enhavo/enhavo-app:8.0-fpm-$(VERSION)

php80-nginx-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.0-nginx-latest images/8.0-nginx
php80-nginx-push:
	docker tag enhavo/enhavo-app:8.0-nginx-latest enhavo/enhavo-app:8.0-nginx-$(VERSION)
	docker push enhavo/enhavo-app:8.0-nginx-$(VERSION)

php80-apache-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.0-apache-latest images/8.0-apache
php80-apache-push:
	docker tag enhavo/enhavo-app:8.0-apache-latest enhavo/enhavo-app:8.0-apache-$(VERSION)
	docker push enhavo/enhavo-app:8.0-apache-$(VERSION)

# 8.1
php81-fpm-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.1-fpm-latest images/8.1-fpm
php81-fpm-push:
	docker tag enhavo/enhavo-app:8.1-fpm-latest enhavo/enhavo-app:8.1-fpm-$(VERSION)
	docker push enhavo/enhavo-app:8.1-fpm-$(VERSION)

php81-nginx-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.1-nginx-latest images/8.1-nginx
php81-nginx-push:
	docker tag enhavo/enhavo-app:8.1-nginx-latest enhavo/enhavo-app:8.1-nginx-$(VERSION)
	docker push enhavo/enhavo-app:8.1-nginx-$(VERSION)

php81-apache-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.1-apache-latest images/8.1-apache
php81-apache-push:
	docker tag enhavo/enhavo-app:8.1-apache-latest enhavo/enhavo-app:8.1-apache-$(VERSION)
	docker push enhavo/enhavo-app:8.1-apache-$(VERSION)

# 8.2
php82-fpm-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.2-fpm-latest images/8.2-fpm
php82-fpm-push:
	docker tag enhavo/enhavo-app:8.2-fpm-latest enhavo/enhavo-app:8.2-fpm-$(VERSION)
	docker push enhavo/enhavo-app:8.2-fpm-$(VERSION)

php82-nginx-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.2-nginx-latest images/8.2-nginx
php82-nginx-push:
	docker tag enhavo/enhavo-app:8.2-nginx-latest enhavo/enhavo-app:8.2-nginx-$(VERSION)
	docker push enhavo/enhavo-app:8.2-nginx-$(VERSION)

php82-apache-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.2-apache-latest images/8.2-apache
php82-apache-push:
	docker tag enhavo/enhavo-app:8.2-apache-latest enhavo/enhavo-app:8.2-apache-$(VERSION)
	docker push enhavo/enhavo-app:8.2-apache-$(VERSION)

# 8.3
php83-fpm-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.3-fpm-latest images/8.3-fpm
php83-fpm-push:
	docker tag enhavo/enhavo-app:8.3-fpm-latest enhavo/enhavo-app:8.3-fpm-$(VERSION)
	docker push enhavo/enhavo-app:8.3-fpm-$(VERSION)

php83-nginx-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.3-nginx-latest images/8.3-nginx
php83-nginx-push:
	docker tag enhavo/enhavo-app:8.3-nginx-latest enhavo/enhavo-app:8.3-nginx-$(VERSION)
	docker push enhavo/enhavo-app:8.3-nginx-$(VERSION)

php83-apache-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.3-apache-latest images/8.3-apache
php83-apache-push:
	docker tag enhavo/enhavo-app:8.3-apache-latest enhavo/enhavo-app:8.3-apache-$(VERSION)
	docker push enhavo/enhavo-app:8.3-apache-$(VERSION)

# 8.4
php84-fpm-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.4-fpm-latest images/8.4-fpm
php84-fpm-push:
	docker tag enhavo/enhavo-app:8.4-fpm-latest enhavo/enhavo-app:8.4-fpm-$(VERSION)
	docker push enhavo/enhavo-app:8.4-fpm-$(VERSION)

php84-nginx-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.4-nginx-latest images/8.4-nginx
php84-nginx-push:
	docker tag enhavo/enhavo-app:8.4-nginx-latest enhavo/enhavo-app:8.4-nginx-$(VERSION)
	docker push enhavo/enhavo-app:8.4-nginx-$(VERSION)

php84-apache-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.4-apache-latest images/8.4-apache
php84-apache-push:
	docker tag enhavo/enhavo-app:8.4-apache-latest enhavo/enhavo-app:8.4-apache-$(VERSION)
	docker push enhavo/enhavo-app:8.4-apache-$(VERSION)

# 8.5
php85-fpm-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.5-fpm-latest images/8.5-fpm
php85-fpm-push:
	docker tag enhavo/enhavo-app:8.5-fpm-latest enhavo/enhavo-app:8.5-fpm-$(VERSION)
	docker push enhavo/enhavo-app:8.5-fpm-$(VERSION)

php85-nginx-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.5-nginx-latest images/8.5-nginx
php85-nginx-push:
	docker tag enhavo/enhavo-app:8.5-nginx-latest enhavo/enhavo-app:8.5-nginx-$(VERSION)
	docker push enhavo/enhavo-app:8.5-nginx-$(VERSION)

php85-apache-build:
	docker buildx build --platform $(PLATFORM) $(NO_CACHE) -t enhavo/enhavo-app:8.5-apache-latest images/8.5-apache
php85-apache-push:
	docker tag enhavo/enhavo-app:8.5-apache-latest enhavo/enhavo-app:8.5-apache-$(VERSION)
	docker push enhavo/enhavo-app:8.5-apache-$(VERSION)
