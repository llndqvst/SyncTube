FROM node:lts-slim

COPY . /synctube/

WORKDIR /synctube

RUN npm install ws

CMD node build/server.js
