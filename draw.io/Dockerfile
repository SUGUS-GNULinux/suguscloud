FROM nginx:1.12.1-alpine
LABEL maintainer="manuellr.git@gmail.com"

ENV DRAW_VERSION v7.5.6

WORKDIR /usr/share/nginx/html
# RUN rm -rf ./*

COPY default.conf /etc/nginx/conf.d/default.conf

ADD https://github.com/jgraph/drawio/releases/download/$DRAW_VERSION/draw.war .

RUN apk add --update unzip \
    && unzip draw.war \
    && apk del unzip \
    && rm -rf /var/cache/apk/* \
    && rm -f draw.war

