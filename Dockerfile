FROM slasterix/docker-ubuntu-apache-php7.3:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN \
    apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    apt-get update && \
    apt-get install certbot python3-certbot-apache
