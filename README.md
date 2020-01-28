![alt text](enhavo.svg "enhavo")
<br/>
<br/>

The enhavo CMS is a open source PHP project on top of the fullstack Symfony framework and uses awesome Sylius components to serve a very flexible software, that can handle most of complex data structure with a clean and usability interface.

Images
----------

The goal of this repository ist to provide docker images to easy deploy enhavo applications with it.
So we provide some images that fit to your enhavo project. At least you need enhavo version `>=0.7` to run 
this images without additional config.

- `7.2-fpm` Ubuntu 18.04 and FPM with PHP Version 7.2
- `7.2-apache` Ubuntu 18.04 and Apache with PHP Version 7.2
- `7.2-nginx` Ubuntu 18.04 and Nginx with PHP Version 7.2
- `7.3-fpm` Ubuntu 18.04 and FPM with PHP Version 7.3
- `7.3-apache` Ubuntu 18.04 and Apache with PHP Version 7.3
- `7.3-nginx` Ubuntu 18.04 and Nginx with PHP Version 7.3
- `7.4-fpm` Ubuntu 18.04 and FPM with PHP Version 7.4
- `7.4-apache` Ubuntu 18.04 and Apache with PHP Version 7.4
- `7.4-nginx` Ubuntu 18.04 and Nginx with PHP Version 7.4

Usage
-----

Run the image with docker run command

```
$ docker run -dit -p 8000:80 --name enhavo-app enhavo/enhavo-app:7.2-apache
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
FROM enhavo/enhavo-app:7.2-apache

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

Contribution
------------

Feel free to contribute just add a star this project or open a task or pull request.

To build the images you can use `make` inside the `image/enhavo-app` directory

MIT License
-----------

This software is free to use with MIT License