
FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY Index.html var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
CMD ["chmod 777 /var/run/docker.sock"]
