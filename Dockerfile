from nginx:latest
ADD target /usr/share/nginx/html
COPY config/default.conf /etc/nginx/conf.d/

