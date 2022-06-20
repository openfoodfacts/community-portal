FROM ubuntu:22.04 as builder
RUN apt-get update && apt-get install -y curl git unzip xz-utils zip wget

WORKDIR /client

RUN git clone --depth=10 https://github.com/flutter/flutter.git
ENV PATH "$PATH:/client/flutter/bin"
RUN flutter channel master
RUN flutter upgrade
RUN flutter doctor

WORKDIR /client

COPY ./ /client

RUN flutter build web

FROM nginx:1.22-alpine

COPY --from=builder /client/build/web/* /usr/share/nginx/html/