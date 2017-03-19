FROM ubuntu:trusty

MAINTAINER marrontan619

RUN sudo apt-get update && \
    sudo apt-get install -y nginx && \
    nginx && \
    echo 'Installed!'

EXPOSE 80

CMD ["/bin/bash"]
