FROM phusion/baseimage:0.11
CMD ["/sbin/my_init"]

RUN mkdir /etc/ssh/key && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm -rf /var/www/html && \
    rm -f /etc/service/sshd/down && \
    apt-get clean && \
    apt-get update -y && \
    apt-get upgrade -y

COPY /ssh/sshd_config /etc/ssh/sshd_config
COPY /my_init.d/00_regen_ssh_host_keys.sh /etc/my_init.d/00_regen_ssh_host_keys.sh
RUN chmod 744 /etc/my_init.d/00_regen_ssh_host_keys.sh

VOLUME ["/etc/ssh/key", "/root/.ssh"]

EXPOSE 22
