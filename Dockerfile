FROM node:7-alpine

# Create app directory
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/data
WORKDIR /usr/src/app

VOLUME ["/usr/src/app/data"]

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 3001
CMD [ "npm", "start" ]
