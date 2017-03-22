FROM ubuntu:trusty

MAINTAINER marrontan619

RUN echo 'build start!'
RUN apt-get update
RUN apt-get install -y nginx-light
RUN echo 'Installed!'
RUN mkdir /volume

COPY /volume/conf/httpd.conf /etc/nginx/conf.d/

EXPOSE 80

# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
CMD ["/bin/bash"]
