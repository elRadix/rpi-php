#FROM resin/rpi-raspbian:latest
FROM jsurf/rpi-raspbian:latest

MAINTAINER Tobias Hargesheimer <docker@ison.ws>

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN [ "cross-build-start" ]

RUN apt-get update && apt-get install -y \
	nano \
	zip \
	wget \
	curl \
	imagemagick imagemagick-doc \
	sqlite sqlite3 sqlite3-doc \
	sendmail-bin \
	php5 php-doc php5-fpm php5-cli php5-json php5-curl php5-gd php5-imagick php5-sqlite php5-pgsql php5-mysql php5-imap php5-xsl php5-ldap php5-memcache php5-mcrypt php5-xdebug php5-intl php5-xmlrpc php-pear php5-dbg php5-geoip \
	--no-install-recommends && \
	rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN [ "cross-build-end" ]	

VOLUME /etc/php5/fpm/pool.d/
EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["php5-fpm"]
