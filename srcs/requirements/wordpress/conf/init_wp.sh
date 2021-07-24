
#               listening port 9000 



#               changing data inside container for nginx.conf
if [ ! -f /var/www/xz_site/wp-config.php]; then
mv /tmp/wp-config.php /var/www/xz_site/
sed -i -e "s|SOS_NAME|'$DB_NAME'|g" /var/www/xz_site/wp-config.php
sed -i -e "s|SOS_USER|'$DB_USER'|g" /var/www/xz_site/wp-config.php
sed -i -e "s|SOS_PASSWORD|'$DB_PASSWORD'|g" /var/www/xz_site/wp-config.php
sed -i -e "s|SOS_HOST|'$DB_HOST'|g" /var/www/xz_site/wp-config.php
fi
#               starting php-fpm(fastCGI)
/usr/sbin/$(ls /usr/sbin | grep php | grep fpm) --nodaemonize
