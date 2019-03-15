FROM node:11.4.0

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install --production

# Bundle app source
COPY . .

EXPOSE 80
CMD [ "npm", "start" ]