# Dockerfile

# base image
FROM node:12
ENV PORT 3000

# create & set working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# copy source files
COPY . /usr/src/app

# install dependencies
COPY package*.json /usr/src/app/
RUN npm install

# start app
RUN npm run build
EXPOSE 3000

## Running the app
CMD "npm" "run" "dev"