FROM nginx:stable-alpine
MAINTAINER Ronaldo Barros
COPY web/ /usr/share/nginx/html
EXPOSE 80

