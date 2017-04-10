###
### LAMP : centos7 + mariadb5.5 + php5.4 + phpMyAdmin4.4
###

FROM centos/systemd

MAINTAINER "Nafaa Friaa" <nafaa.friaa@isetjb.rnu.tn>

# server update :
RUN yum --nogpgcheck -y update

# install epel-release :
RUN yum --nogpgcheck -y install epel-release

# install apache 2.4 :
RUN yum --nogpgcheck -y install httpd
RUN yum clean all
RUN systemctl enable httpd.service

# install mariadb 5.5 :
RUN yum --nogpgcheck -y install mariadb-server
RUN yum --nogpgcheck -y install mariadb
RUN yum clean all
RUN systemctl enable mariadb.service

# install php 5.4 and extensions :
RUN yum --nogpgcheck -y install php
RUN yum --nogpgcheck -y install php-mysql
RUN yum --nogpgcheck -y install php-gd
RUN yum --nogpgcheck -y install php-ldap
RUN yum --nogpgcheck -y install php-odbc
RUN yum --nogpgcheck -y install php-pear
RUN yum --nogpgcheck -y install php-xmlrpc
RUN yum --nogpgcheck -y install php-mbstring
RUN yum --nogpgcheck -y install php-snmp
RUN yum --nogpgcheck -y install php-soap
RUN yum --nogpgcheck -y install curl
RUN yum --nogpgcheck -y install curl-devel
RUN yum --nogpgcheck -y install php-mcrypt
RUN yum clean all

# install phpMyAdmin 4.4 :
RUN yum --nogpgcheck -y install phpmyadmin

# running port :
EXPOSE 80 3306

CMD ["/usr/sbin/init"]
