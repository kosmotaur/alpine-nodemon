FROM hub.noths.com/node:6-alpine

ENV HOME /service
WORKDIR $HOME

COPY package.json /tmp/package.json
RUN cd /tmp && \
    npm install && \
    mkdir -p $HOME/node_modules && \
    cp -a /tmp/node_modules $HOME
COPY . $HOME
EXPOSE 8080

ENV NODE_ENV production
CMD ["npm", "run", "start-dev"]
