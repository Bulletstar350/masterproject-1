FROM centos:latest
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install httpd -y
ADD https://www.google.com /var/www/html
RUN ["/usr/sbin/httpd" , "-D", "FOREGROUND"]
~                                                                                                                       ~                                        
