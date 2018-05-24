FROM nginx

LABEL maintainer="Ronaldo Barros"

RUN apt-get install -y wget unzip

RUN cd /tmp && wget https://www.html5webtemplates.co.uk/downloads/black_white.zip && unzip black_white.zip web \
    && cp -R -f /tmp/black_white/* /usr/share/nginx/html/

EXPOSE 80
