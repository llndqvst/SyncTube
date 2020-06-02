FROM node:lts-alpine3.11 as base

COPY . /synctube/

WORKDIR /synctube

RUN npm install ws

CMD node build/server.js
