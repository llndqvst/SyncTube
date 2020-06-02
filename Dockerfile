FROM node:lts-alpine-3.11

COPY . /synctube/

WORKDIR /synctube

RUN npm install ws

CMD node build/server.js
