# Docker with {Centos7 + MariaDB5.5 + PHP5.4} #

A Docker LAMP stack to use for both Web development and production mode. Extending Centos/systemd in the docker file is optional but very useful (allows us to save a lot of time)...

## Description ##
A Docker file to build an run container with Centos7 + MariaDB5.5 + PHP5.4

## Build the image : ##
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

;-)

[www.isetjb.net](http://www.isetjb.net/ "ISET Djerba")
