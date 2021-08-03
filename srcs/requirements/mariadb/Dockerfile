FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/setup_db.sh      /var/www/

RUN chmod 444 /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 755 /var/www/setup_db.sh 


EXPOSE 3306
ENTRYPOINT ["bash", "/var/www/setup_db.sh"]
