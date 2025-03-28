FROM ubuntu
RUN apt update -y
RUN apt install apache2 maven tree -y
RUN touch file{1..10}
ADD https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.5/bin/apache-tomcat-11.0.5.tar.gz /tmp
WORKDIR /tmp
LABEL author rahamshaik
ENV client swiggy
ENV server Prd
COPY . /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
 
