#!/usr/bin/env bash
DOMAIN=domain.com

# tip, you can add more -d. ie:  -d www.domain.com

docker run -it --rm \
    -v $PWD/certs:/etc/letsencrypt \
    -v $PWD/certs-data:/data/letsencrypt \
    certbot/certbot \
    certonly \
    --webroot --webroot-path=/data/letsencrypt \
    -d $DOMAIN
