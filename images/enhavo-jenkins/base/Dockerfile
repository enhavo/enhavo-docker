FROM jenkins/jenkins:2.234

USER root

RUN apt-get update && \
    apt-get install -y ruby make && \
    apt-get update && \
    apt-get install -y vim && \
    apt-get install -y rubygems && \
    apt-get install -y bundler && \
    apt-get install -y rsync && \

COPY etc /etc/sudoers

USER jenkins
