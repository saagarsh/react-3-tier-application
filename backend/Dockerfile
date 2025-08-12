FROM node:current-alpine3.22 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN chown -R node:node /app

USER node

COPY . .

EXPOSE 3500

CMD ["node","server.js"]

