# This is build my own apache
FROM ubuntu:latest
MAINTAINER shashi3627@gmail.com
RUN apt-get update
RUN apt-get install -y apache2 php php-mysql
EXPOSE 80
ADD code /var/www/html
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
