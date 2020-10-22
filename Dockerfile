FROM slasterix/docker-ubuntu-apache-php7.3:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN \
    a2enmod proxy_wstunnel && \
    apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update && \
    apt-get install -y certbot python-certbot-apache python3-certbot-dns-route53
