FROM ubuntu:trusty

MAINTAINER marrontan619

RUN echo 'build start!'
RUN apt-get update
RUN apt-get install -y nginx-light
RUN apt-get install -y tomcat7
RUN echo 'Installed!'
RUN mkdir /volume

COPY /volume/conf/httpd.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/httpd.conf /etc/nginx/sites-enabled/
EXPOSE 80

# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
CMD ["/bin/bash"]
