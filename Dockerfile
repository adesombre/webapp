FROM ubuntu
MAINTAINER desombrealain (alaindesombre@gmail.com)
RUN apt update
RUN apt install -y nginx git 
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
