FROM debian:buster

RUN apt-get update && apt-get install -y php-mysqli php-fpm wget \
	php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

COPY ./conf/ /etc/php/7.3/fpm/pool.d/
COPY ./tools/ /var/www/

RUN chmod 777 /etc/php/7.3/fpm/pool.d/www.conf
RUN chmod 777 /var/www/setup_wp.sh

RUN mkdir /run/php

EXPOSE 9000
ENTRYPOINT ["bash", "/var/www/setup_wp.sh"]
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
