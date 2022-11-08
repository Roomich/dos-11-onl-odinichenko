FROM ubuntu:focal

ENV TZ=Europe/Minsk \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y wget gnupg2 && \
    sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt focal-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get -y update && apt-get -y install postgresql-14

EXPOSE 5432

USER postgres

ENTRYPOINT ["/usr/lib/postgresql/14/bin/postgres"]

CMD ["-D", "/var/lib/postgresql/14/main", "-c", "config_file=/etc/postgresql/14/main/postgresql.conf", "-i"]