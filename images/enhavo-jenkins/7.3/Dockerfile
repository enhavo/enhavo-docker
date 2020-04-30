FROM enhavo/enhavo-jenkins:base
CMD ["/sbin/my_init"]

USER root

RUN apt-get update && \
    apt-get -y install php7.3 && \
    apt-get -y install php7.3-apcu && \
    apt-get -y install php7.3-mysql && \
    apt-get -y install php7.3-gd && \
    apt-get -y install php7.3-curl && \
    apt-get -y install php7.3-mbstring && \
    apt-get -y install php7.3-dom && \
    apt-get -y install php7.3-intl && \
    apt-get -y install php7.3-zip && \
    apt-get -y install composer

USER jenkins