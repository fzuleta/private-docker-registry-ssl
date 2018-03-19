#!/usr/bin/env bash

if [ -d "/etc/letsencrypt/live" ]; then
    rm /etc/nginx/conf.d/default.conf
    cp /default.conf /etc/nginx/conf.d/default.conf
    echo "Starting with both port 80 and 443"
else
    # use the por 80 only of the conf
    rm /etc/nginx/conf.d/default.conf
    cp /default_pre.conf /etc/nginx/conf.d/default.conf
    echo "Starting with port 80 only"
fi

nginx -g 'daemon off;'
