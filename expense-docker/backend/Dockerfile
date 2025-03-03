FROM node:20
#folder created for configuration setup
WORKDIR /opt/backend 
#copied dependencies
COPY package.json .
COPY *.js .
#running dependencies software
RUN npm install
#configuring backend to connect from backend to DB
ENV DB_HOST="mysql"
#executing the index JS file via node
CMD [ "node", "index.js" ]

