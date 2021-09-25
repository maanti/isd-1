FROM node:14.17.6-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm i

COPY . .

CMD [ "node", "server.js" ]
