FROM debian
RUN apt-get update && apt-get install apache2 -y && apt clean
VOLUME /site
COPY /site /var/www/html/
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
