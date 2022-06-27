FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./webdata/ /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
