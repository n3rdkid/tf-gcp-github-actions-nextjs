FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/next/src
WORKDIR /usr/next/src

# copy source files
COPY . /usr/next/src

# install dependencies
RUN npm install

# start app
RUN npm run build
EXPOSE 3000
CMD npm run start