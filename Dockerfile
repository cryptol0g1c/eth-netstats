FROM node:8-alpine

WORKDIR /app

RUN apk add --update git \
    && npm install -g grunt-cli

COPY package*.json ./

RUN npm install

COPY . ./

RUN grunt

EXPOSE 3000

CMD ["npm", "start"]