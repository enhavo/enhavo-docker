FROM jenkins/jenkins:2.234

USER root

RUN apt-get -y update  && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get -y update  && \
    apt-get -y install ruby && \
    apt-get -y install make && \
    apt-get -y install vim && \
    apt-get -y install rubygems && \
    apt-get -y install bundler && \
    apt-get -y install rsync && \
    apt-get -y install nodejs && \
    apt-get -y install yarn && \
    apt-get -y install ffmpeg && \
    apt-get -y install optipng && \
    apt-get -y install jpegoptim && \
    apt-get -y install gifsicle && \
    apt-get -y install pngquant && \
    apt-get -y install supervisor && \
    yarn global add svgo

COPY etc/sudoers /etc/sudoers

USER jenkins
