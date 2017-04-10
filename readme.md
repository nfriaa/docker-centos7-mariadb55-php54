# Docker Centos7 MariaDB5.5 PHP5.4 #

A Docker LAMP Stack

## Description ##
A Docker file to build an run container with Centos7 / MariaDB5.5 / PHP5.4

## Build : ##
```shell
docker build --rm --no-cache -t centos7mariadb55php54_image .
```

## Run : ##
```shell
docker run --privileged --name centos7mariadb55php54_container -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -d centos7mariadb55php54_image
```

## Run with shared volumes : ##
```shell
docker run --privileged --name centos7mariadb55php54_container -v /home/nafaa/monServeurLocal/htdocs:/var/www/html -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -p 3306:3306 -v /home/nafaa/monServeurLocal/mariadb:/var/lib/mysql -d centos7mariadb55php54_image
```

