FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY ./conf/nginx.conf /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled

RUN chown -R www-data:www-data /var/www/*
RUN chmod -R 755 /var/www/*

RUN openssl req -x509 -nodes -newkey rsa:2048 -days 365 -keyout /etc/ssl/private.key -out /etc/ssl/cert.crt -subj "/C=RU/ST=Tatarstan/L=Kazan/O=school21/CN=21school" 

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
