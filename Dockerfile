FROM slasterix/docker-ubuntu-apache-php7.3:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN \
    apt-get update && \
    a2enmod proxy_wstunnel && \
    apt-get -y autoremove build-essential apache2-dev git && \
    rm -rf /var/lib/apt/lists/*
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update && \
    apt-get install -y certbot python-certbot-apache python3-certbot-dns-route53
