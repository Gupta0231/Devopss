FROM ubuntu

MAINTAINER NewstarCorporation

RUN apt-get install -y && apt-get install -y apache2

RUN echo "Hello to Docker CI/CD pipeline" >> /index.html

COPY /index.html /var/www/html/

CMD [“apache2ctl”, “-D”, “FOREGROUND”]

EXPOSE 80

