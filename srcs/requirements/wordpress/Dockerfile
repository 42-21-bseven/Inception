#wordpress:debian_upd_upg_wget_wp

FROM debian:buster

RUN		apt-get update && apt-get -y upgrade

RUN		apt-get install -y vim wget php-fpm php php-mbstring

RUN	wget https://wordpress.org/latest.tar.gz

RUN		tar -xvf latest.tar.gz && rm latest.tar.gz

RUN			mkdir -p /var/www/xz_site

RUN			mv wordpress /var/www/xz_site

COPY		./conf/wp-config.php /var/www/xz_site

COPY		./conf/init_wp.sh /


