FROM debian:buster

ARG MYSQL_PASSWORD="defaultpass"
ARG MYSQL_ROOT_PASSWORD="defaultpass"

ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

RUN echo $MYSQL_PASSWORD
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install mariadb-server mariadb-client php-mysql -y

COPY ./tools/db_pre.sql /var/www/
COPY ./tools/db_init.sh	/var/www/

RUN chmod +x /var/www/db_init.sh
RUN /var/www/db_init.sh

EXPOSE 3306

ENTRYPOINT ["/usr/bin/mysqld_safe", "--bind-address=0.0.0.0"]