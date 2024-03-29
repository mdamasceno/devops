FROM ubuntu:latest

RUN apt-get update
RUN apt-get install nginx -y

COPY app.html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
