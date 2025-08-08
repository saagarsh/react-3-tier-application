FROM node:current-alpine3.22 AS build

WORKDIR /app

COPY . .

RUN npm install && npm install prom-client
RUN npm run build


FROM nginx:1.29.0-alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80:80

CMD ["nginx", "-g", "daemon off;"]