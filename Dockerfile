FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.cxoxa.mongodb.net
ENV MONGODB_USERNAME velrajan2004
ENV MONGODB_PASSWORD M7rMuQuQF3M9ncTR

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]