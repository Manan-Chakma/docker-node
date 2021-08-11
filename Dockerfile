# specify a base image
FROM node:alpine

# install dependencies
WORKDIR /usr/app

COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD [ "npm", "start" ]