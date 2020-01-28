FROM phusion/baseimage:0.11
CMD ["/sbin/my_init"]

RUN mkdir /etc/ssh/key && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm -rf /var/www/html && \
    rm -f /etc/service/sshd/down && \
    apt clean && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt -y update  && \
    apt -y upgrade  && \
    apt -y install nodejs && \
    apt -y install yarn && \
    apt -y install git && \
    apt -y install sudo && \
    apt -y install -y ffmpeg && \
    apt -y install -y optipng && \
    apt -y install -y jpegoptim && \
    apt -y install -y gifsicle && \
    apt -y install -y pngquant && \
    yarn global add svgo

COPY /ssh/sshd_config /etc/ssh/sshd_config
COPY /my_init.d/00_regen_ssh_host_keys.sh /etc/my_init.d/00_regen_ssh_host_keys.sh
RUN chmod 744 /etc/my_init.d/00_regen_ssh_host_keys.sh

VOLUME ["/etc/ssh/key", "/root/.ssh"]

EXPOSE 22
