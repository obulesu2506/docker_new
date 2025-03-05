# Used in normal scenario
# #FROM node:20
# #As part of Best practices i.e., Run as non-root user & minimal size images
# FROM node:20.18.3-alpine3.21
# RUN addgroup -S expense && adduser -S expense -G expense
# RUN mkdir /opt/backend
# RUN chown -R expense:expense /opt/backend
# #folder created for configuration setup
# WORKDIR /opt/backend 
# #copied dependencies
# COPY package.json .
# COPY *.js .
# #running dependencies software
# RUN npm install
# #configuring backend to connect from backend to DB via bridge/virtual/customized network
# #ENV DB_HOST="mysql"
# #configuring backend to connect from backend to DB via localhost network
# ENV DB_HOST="localhost"
# #executing the index JS file via node
# USER expense
# CMD [ "node", "index.js" ]
FROM node:20.18.3-alpine3.21 AS builder
WORKDIR /opt/backend
COPY package.json ./
COPY *.js ./
RUN npm install


FROM node:20.18.3-alpine3.21
RUN addgroup -S expense && adduser -S expense -G expense && \
    mkdir /opt/backend && \
    chown -R expense:expense /opt/backend
ENV DB_HOST="mysql"
WORKDIR /opt/backend
USER expense
COPY --from=builder /opt/backend/ /opt/backend
CMD ["node", "index.js"]


