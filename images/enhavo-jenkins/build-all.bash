#!/usr/bin/env bash

set -e

docker build --no-cache -t enhavo/enhavo-jenkins:base base
docker build --no-cache -t enhavo/enhavo-jenkins:7.2-latest 7.2
docker build --no-cache -t enhavo/enhavo-jenkins:7.3-latest 7.3
docker build --no-cache -t enhavo/enhavo-jenkins:7.4-latest 7.4
