enhavo-jenkins
==========

Documentation for the image ``enhavo-jenkins``

Install
-------

Pull the image from docker hub

```
    docker pull enhavo/enhavo-jenkins:master
```

Run jenkins container

```
    docker run -p 8080:8080 -p 50000:50000 -v /data/jenkins:/var/jenkins_home -d enhavo/enhavo-jenkins:7.4-latest
```
