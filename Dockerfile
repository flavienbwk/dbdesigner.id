FROM node:13.5-slim

COPY package.json /usr/app/package.json
COPY package-lock.json /usr/app/package-lock.json
COPY babel.config.js /usr/app/babel.config.js
COPY vue.config.js /usr/app/vue.config.js

WORKDIR /usr/app
RUN npm install
RUN npm audit fix
RUN npm update

CMD [ "npm", "run", "serve" ]