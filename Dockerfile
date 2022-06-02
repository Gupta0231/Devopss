FROM centos:latest

MAINTAINER NewstarCorporation

RUN yum -y install httpd

RUN echo "Hello to Docker CI/CD pipeline" >> /index.html

COPY /index.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80

