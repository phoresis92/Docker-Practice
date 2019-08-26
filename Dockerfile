FROM ubuntu:18.04

# Avoiding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive

MAINTAINER young "husheart@naver.com"


RUN apt-get update
RUN apt-get install -y apache2 # Install Apache web server (Only 'yes')
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php # For Installing PHP 5.6
RUN apt-get update
RUN apt-get install -y php5.6

# Connect PHP & MySQL
RUN apt-get install php5.6-mysql

EXPOSE 80 
# Open HTTP Port

CMD ["apachectl", "-D", "FOREGROUND"]


