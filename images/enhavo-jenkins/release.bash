#!/usr/bin/env bash

VERSION=0.1

docker tag enhavo/enhavo-jenkins:7.2-latest "enhavo/enhavo-jenkins:7.2-$VERSION"
docker tag enhavo/enhavo-jenkins:7.3-latest "enhavo/enhavo-jenkins:7.3-$VERSION"
docker tag enhavo/enhavo-jenkins:7.4-latest "enhavo/enhavo-jenkins:7.4-$VERSION"

docker push "enhavo/enhavo-jenkins:7.2-$VERSION"
docker push "enhavo/enhavo-jenkins:7.3-$VERSION"
docker push "enhavo/enhavo-jenkins:7.4-$VERSION"