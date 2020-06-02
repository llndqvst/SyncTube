FROM alpine:3.11.5 as base

RUN apk update && \
        apk add --no-cache \
        npm
        
COPY . /synctube/

WORKDIR /synctube

RUN npm install ws

CMD node build/server.js
