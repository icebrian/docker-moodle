#!/bin/bash
set -e

echo "Start PHP-FPM ..."
service php7.2-fpm start

echo "Starting nginx ..."
service nginx start

echo "Starting Varnish ..."
service varnish start

#/usr/sbin/apache2ctl -D FOREGROUND
#/usr/sbin/nginx -c /etc/nginx/nginx.conf -g "daemon off;"

echo "Tailing nginx error log ..."
/usr/bin/tail -f /var/log/nginx/error.log