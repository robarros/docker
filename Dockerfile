FROM nginx:alpine

LABEL maintainer="Ronaldo Barros"

RUN apk add --update unzip curl

RUN cd /tmp && curl -O https://www.html5webtemplates.co.uk/downloads/black_white.zip && unzip black_white.zip \
    && cp -R -f /tmp/black_white/* /usr/share/nginx/html/

EXPOSE 80
