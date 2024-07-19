FROM ubuntu:latest
RUN apt update && apt install nginx -y
RUN rm -rf /var/www/html/*.html
COPY index.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]


