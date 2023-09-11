FROM ubuntu:22.04

RUN  apt-get update -y 

RUN  apt-get install -y git unzip nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN mkdir /app

WORKDIR /app

RUN git clone https://github.com/Amul-Thantharate/passx-pass.git

RUN cd  passx-pass && mv * /var/www/html 

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf" ]
