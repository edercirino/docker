FROM ubuntu

MAINTAINER eder

RUN apt-get update && apt-get clean -y

RUN apt-get install nano -y nginx

ADD ./config/nginx.conf /etc/nginx/sites-enabled/default

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 8080

CMD service nginx start -g
