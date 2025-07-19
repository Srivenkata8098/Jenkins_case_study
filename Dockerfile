FROM ubuntu:latest
RUN apt-get update && apt install apache2 -y 
ADD index.html /var/www/html/
EXPOSE 82
ENTRYPOINT ["apache2ctl -D FOREGROUND"]
