FROM slasterix/docker-ubuntu-apache-php7.3:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN \
    apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update && \
    apt-get install -y certbot python-certbot-apache
RUN echo '0 2 * * * certbot renew --dry-run' > /etc/crontabs/root
