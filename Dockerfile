FROM nginx:alpine

LABEL maintainer="Ronaldo Barros"

RUN apk --update --no-cache unzip curl

RUN cd /tmp && curl -O https://www.html5webtemplates.co.uk/downloads/black_white.zip && unzip black_white.zip \
    && cp -R -f /tmp/black_white/* /usr/share/nginx/html/ && rm -rf /tmp/black_white.zip 

EXPOSE 80

HEALTHCHECK --interval=5s --timeout=2s --retries=12 CMD curl --silent --fail localhost:80 || exit 1
