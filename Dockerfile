FROM ubuntu:trusty

MAINTAINER marrontan619

RUN echo "build start!" && \
    apt-get update && \
    apt-get install -y nginx-light && \
    echo 'Installed!'

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
