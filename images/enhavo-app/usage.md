Usage
-----

Run the image with docker run command

```
$ docker run -dit -p 8000:80 --name enhavo-app enhavo/enhavo-app:7.2-apache-latest
```

On port 8000 you should see the php info page. 

The document root is under `/var/www/current/public`

To run your app inside the container you need to mount your project directory

`-v /var/www/current:/path/to/project/dir`

If you use capistrano you can mount your deploy directory

`-v /var/www:/path/to/capistrano/deploy`

Also SSH for deployment is supported by the image, just use the port option to expose the port

`-p 2200:22`

Custom configurations
---------------------

If the docker image don't fit to your needs, than just extend it.
Create your custom `Dockerfile`. You can use apt-get to install
missing libraries.

```
# Dockerfile
FROM enhavo/enhavo-app:7.2-apache-latest

COPY /path/to/your/php.ini /etc/php/7.2/fpm/php.ini
RUN apt-get -y install php7.2-ldap
```

Now just build your image and store it under your custom name

```
$ docker build -t your_company/custom_name:latest .
```

And run your custom image

```
$ docker run -dit -p 8000:80 --name enhavo-app your_company/custom_name:latest
```

**Start with supervisor**

```
$ docker run -dit -p 8000:80 --env SUPERVISOR=true --name enhavo-app enhavo/enhavo-app:latest
```

Add your supervisor configs to ``/etc/supervisor/conf.d``