FROM centos:latest
RUN yum install httpd unzip -y
ADD https://www.google.com /var/www/html
RUN ["/usr/sbin/httpd" ,"-D" , "FOREGROUND"]
