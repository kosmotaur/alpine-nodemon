FROM mhart/alpine-node:6.2.2

WORKDIR root

ENV HOME /service
WORKDIR $HOME

COPY package.json /tmp/package.json
RUN cd /tmp && \
    npm install && \
    mkdir -p $HOME/node_modules && \
    cp -a /tmp/node_modules $HOME
COPY . $HOME
EXPOSE 8080

CMD ["npm", "start"]
