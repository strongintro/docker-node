# StrongIntro Node.js Image

Lightweight docker container for StrongIntro node.js apps

```dockerfile
FROM strongintro/node:latest

RUN mkdir -p /opt/app
WORKDIR /opt/app

ENV NPM_TOKEN 00000000-0000-0000-0000-000000000000

COPY . ./
RUN npm install

RUN apk del make gcc g++ python && \
    rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.npmrc /root/.node-gyp

EXPOSE 3000
CMD npm start
```
