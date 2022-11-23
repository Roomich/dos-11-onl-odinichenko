FROM ubuntu:jammy

RUN apt-get -y update && apt-get install -y mysql-server-8.0

USER mysql

CMD ["/usr/sbin/mysqld"]