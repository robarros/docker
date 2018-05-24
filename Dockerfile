FROM nginx

LABEL maintainer="Ronaldo Barros"

RUN apt install wget -y

RUN cd /tmp && wget https://www.html5webtemplates.co.uk/downloads/black_white.zip && tar -xvf black_white.zip \
    && cp -R -f /tmp/black_white/* /usr/share/nginx/html/

EXPOSE 80
