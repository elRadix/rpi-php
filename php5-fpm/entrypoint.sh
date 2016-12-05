#!/bin/bash

if [ ! -z "$TZ" ]; then
	echo ">> set timezone"
	echo ${TZ} >/etc/timezone && dpkg-reconfigure -f noninteractive tzdata
	sed -i -e 's/;date.timezone =/date.timezone=${TZ}/g' /etc/php5/fpm/php.ini
fi

sed -i -e 's/display_errors = Off/display_errors = On/g' /etc/php5/fpm/php.ini
sed -i -e 's/upload_max_filesize = 2M/upload_max_filesize = 250M/g' /etc/php5/fpm/php.ini

sed -i -e 's/listen = \/var\/run\/php5-fpm.sock/listen = [::]:9000/g' /etc/php5/fpm/pool.d/www.conf

# exec CMD
echo ">> exec docker CMD"
echo "$@"
exec "$@"
