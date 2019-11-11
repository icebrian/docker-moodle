#!/bin/bash
set -e

echo "Starting Apache ..."
#service apache2 start
/usr/sbin/apache2ctl -D FOREGROUND