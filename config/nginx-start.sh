#!/bin/bash
cp /opt/etc/nginx.conf /etc/nginx/nginx.conf
sed -i "s/%fpm-ip%/$FPM_PORT_9000_TCP_ADDR/" /etc/nginx/nginx.conf
sed -i "s/%project_name%/$1/" /etc/nginx/sites-enabled/laravel
exec /usr/sbin/nginx
