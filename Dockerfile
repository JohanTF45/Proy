FROM ubuntu:20.10
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN wget https://github.com/JohanTF45/Proy/archive/master.zip
RUN unzip master.zip
RUN cp -a /Proy-master/* var/www/html
EXPOSE 82
CMD /usr/sbin/apache2ctl -D FOREGROUND
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata