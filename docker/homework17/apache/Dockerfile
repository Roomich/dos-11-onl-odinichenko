FROM debian:11.5

RUN apt update -y && apt install -y apache2 apache2-utils 

WORKDIR /var/www/html

COPY index.html .

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]