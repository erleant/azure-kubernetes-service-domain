FROM nginx:1.23.1

WORKDIR /usr/share/nginx/html
COPY ./ /usr/share/nginx/html

EXPOSE 80