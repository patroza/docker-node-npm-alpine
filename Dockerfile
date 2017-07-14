FROM node:8.1.4-alpine

MAINTAINER Patrick Roza <contact@patrickroza.com>

# Need to add git to install dependencies from package.json that reference a
# git repository.		  # git repository.
RUN apk update && apk add git
# NPM 5.x brings significant improvements in performance and reliability
WORKDIR /npm-tmp
RUN npm install npm@^5.3.0
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

WORKDIR /

