FROM slasterix/docker-ubuntu-apache-php7.3:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN \
    apt-get update && \
    apt-get install software-properties-common && \
    add-apt-repository universe && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update && \
    apt-get install certbot python-certbot-apache && \ 
RUN certbot --apache certonly
ADD crontab /etc/crontabs
RUN crontab /etc/crontabs/crontab
