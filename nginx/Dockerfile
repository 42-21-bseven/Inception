#nginx_openssl_vim

FROM debian:buster

RUN		apt-get update && apt-get -y upgrade

RUN		apt-get install -y nginx

COPY	./srcs/nginx-conf /ets/nginx/sites-available/xz_site.conf

RUN				ln -s /ets/nginx/sites-available/xz_site.conf /etc/nginx/sites-enabled/xz_site.conf

RUN				rm -Rf /etc/nginx/sites-enabled/default


RUN		apt-get install openssl

RUN				mkdir /etc/nginx/ssl/

RUN				openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/private.pem -keyout /etc/nginx/ssl/public.key -subj "/C=RU/L=KAZAN/OU=21school/"

RUN				openssl rsa -noout -text -in /etc/nginx/ssl/public.key


COPY ./srcs/*.sh /

EXPOSE 80 443

ENTRYPOINT sh init.sh && /bin/bash
