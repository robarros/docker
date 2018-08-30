FROM nginx:alpine

LABEL maintainer="Ronaldo Barros" \
      version="$BUILD_NUMBER"

RUN apk add --update unzip curl

RUN cd /tmp && curl -O https://www.html5webtemplates.co.uk/downloads/black_white.zip && unzip black_white.zip \
    && cp -R -f /tmp/black_white/* /usr/share/nginx/html/ && rm -rf /tmp/black_white.zip 

EXPOSE 80
