#!/usr/bin/env bash

VERSION=0.2

docker tag enhavo/enhavo-app:7.2-nginx-latest "enhavo/enhavo-app:7.2-nginx-$VERSION"
docker tag enhavo/enhavo-app:7.2-apache-latest "enhavo/enhavo-app:7.2-apache-$VERSION"
docker tag enhavo/enhavo-app:7.2-fpm-latest "enhavo/enhavo-app:7.2-fpm-$VERSION"
docker tag enhavo/enhavo-app:7.3-nginx-latest "enhavo/enhavo-app:7.3-nginx-$VERSION"
docker tag enhavo/enhavo-app:7.3-apache-latest "enhavo/enhavo-app:7.3-apache-$VERSION"
docker tag enhavo/enhavo-app:7.3-fpm-latest "enhavo/enhavo-app:7.3-fpm-$VERSION"
docker tag enhavo/enhavo-app:7.4-nginx-latest "enhavo/enhavo-app:7.4-nginx-$VERSION"
docker tag enhavo/enhavo-app:7.4-apache-latest "enhavo/enhavo-app:7.4-apache-$VERSION"
docker tag enhavo/enhavo-app:7.4-fpm-latest "enhavo/enhavo-app:7.4-fpm-$VERSION"

docker push "enhavo/enhavo-app:7.2-nginx-$VERSION"
docker push "enhavo/enhavo-app:7.2-apache-$VERSION"
docker push "enhavo/enhavo-app:7.2-fpm-$VERSION"
docker push "enhavo/enhavo-app:7.3-nginx-$VERSION"
docker push "enhavo/enhavo-app:7.3-apache-$VERSION"
docker push "enhavo/enhavo-app:7.3-fpm-$VERSION"
docker push "enhavo/enhavo-app:7.4-nginx-$VERSION"
docker push "enhavo/enhavo-app:7.4-apache-$VERSION"
docker push "enhavo/enhavo-app:7.4-fpm-$VERSION"
