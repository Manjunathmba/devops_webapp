FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./web_data/ /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
