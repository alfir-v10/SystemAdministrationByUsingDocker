#!bin/env bash

if ! [ -f "/var/www/html/wp-config.php" ]; then
	apt-get install -y curl mariadb-client
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  	chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
	wp core download --locale=ru_RU --path=wp --allow-root 
	cd wp	
    wp core config --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER_NAME} --dbpass=${DB_USER_PASSWORD} --allow-root
    wp core install --url=${URL} --admin_user=${ADM_NAME} --admin_password=${ADM_PASSWORD} --admin_email=${ADM_EMAIL} --skip-email --allow-root
    wp user create --allow-root vaska vaskapupkin@mail.ru --role=author --user_pass=vaska
    mv * /var/www/html/
fi

exec "$@"

