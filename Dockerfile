FROM registry.access.redhat.com/rhel
RUN yum install httpd -y
ADD https://www.google.com /var/www/html
RUN ["/usr/sbin/httpd" , "-D", "FOREGROUND"]
~                                                                                                                       ~                                        
