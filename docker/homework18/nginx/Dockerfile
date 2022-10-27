FROM redhat/ubi8

RUN yum -y update && yum -y install nginx

WORKDIR /usr/share/nginx/html

#COPY index.html .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]