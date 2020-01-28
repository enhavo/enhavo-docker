#!/usr/bin/env bash

docker build --no-cache -t enhavo/enhavo-app:base base
docker build --no-cache -t enhavo/enhavo-app:7.2-fpm-latest 7.2-fpm
docker build --no-cache -t enhavo/enhavo-app:7.2-nginx-latest 7.2-nginx
docker build --no-cache -t enhavo/enhavo-app:7.2-apache-latest 7.2-apache
docker build --no-cache -t enhavo/enhavo-app:7.3-fpm-latest 7.3-fpm
docker build --no-cache -t enhavo/enhavo-app:7.3-nginx-latest 7.3-nginx
docker build --no-cache -t enhavo/enhavo-app:7.3-apache-latest 7.3-apache
docker build --no-cache -t enhavo/enhavo-app:7.4-fpm-latest 7.4-fpm
docker build --no-cache -t enhavo/enhavo-app:7.4-nginx-latest 7.4-nginx
docker build --no-cache -t enhavo/enhavo-app:7.4-apache-latest 7.4-apache
