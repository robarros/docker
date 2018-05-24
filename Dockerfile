FROM nginx:alpine

LABEL maintainer="Ronaldo Barros"

RUN apk add tar wget

RUN cd /tmp && wget https://www.html5webtemplates.co.uk/downloads/black_white.zip && tar xf black_white.zip \
    && cp -R -f /tmp/black_white/* /usr/share/nginx/html/

EXPOSE 80
