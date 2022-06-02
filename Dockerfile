FROM httpd

MAINTAINER NewstarCorporation

RUN yum install httpd -y

RUN echo "Hello to Docker CI/CD pipeline" >> /index.html

COPY /index.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80

