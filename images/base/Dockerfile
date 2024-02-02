FROM phusion/baseimage:bionic-1.0.0
CMD ["/sbin/my_init"]

RUN mkdir /etc/ssh/key && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm -rf /var/www/html && \
    rm -f /etc/service/sshd/down && \
    apt-get clean && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get -y update  && \
    apt-get -y upgrade  && \
    apt-get -y install nodejs && \
    apt-get -y install yarn && \
    apt-get -y install git && \
    apt-get -y install sudo && \
    apt-get -y install ffmpeg && \
    apt-get -y install optipng && \
    apt-get -y install jpegoptim && \
    apt-get -y install gifsicle && \
    apt-get -y install pngquant && \
    apt-get -y install supervisor && \
    apt-get -y install unzip && \
    apt-get -y install rsync && \
    yarn global add svgo && \
    curl -fsSL https://toolbelt.treasuredata.com/sh/install-ubuntu-bionic-td-agent4.sh | sh && \
    mkdir /etc/td-agent/config.d && \
    apt-get -y --allow-releaseinfo-change update # Because treasuredata repository has a changed message

ENV FLUENTD_FLUSH_INTERVAL 2s
ENV FLUENTD_FLUSH_MODE interval

COPY /ssh/sshd_config /etc/ssh/sshd_config
COPY /my_init.d/00_regen_ssh_host_keys.sh /etc/my_init.d/00_regen_ssh_host_keys.sh
COPY /my_init.d/00_supervisor.sh /etc/my_init.d/00_supervisor.sh
COPY /my_init.d/00_td-agent.sh /etc/my_init.d/00_td-agent.sh
COPY /td-agent/td-agent.conf /etc/td-agent/td-agent.conf

RUN chmod 744 /etc/my_init.d/00_regen_ssh_host_keys.sh && \
    chmod 744 /etc/my_init.d/00_supervisor.sh && \
    chmod 744 /etc/my_init.d/00_td-agent.sh

EXPOSE 22
