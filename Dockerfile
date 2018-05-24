FROM nginx

LABEL maintainer="Ronaldo Barros"

RUN apt-get install wget -y

EXPOSE 80
