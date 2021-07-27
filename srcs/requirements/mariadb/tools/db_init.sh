#!bin/bash

service mysql start
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
echo "CREATE USER 'btwee'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'btwee'@'%' WITH GRANT OPTION;"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
mysql -u root wordpress < /var/www/db_pre.sql
mysqladmin -u root password $MYSQL_ROOT_PASSWORD
service mysql stop