FROM node:10-stretch
USER node

EXPOSE 65520

RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm install -g remixd
RUN sed -i s/127.0.0.1/0.0.0.0/g /home/node/.npm-global/lib/node_modules/remixd/src/websocket.js

CMD remixd -s /usr/remix/source --remix-ide https://remix.ethereum.org
