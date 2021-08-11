FROM quay.io/repository/ibmgaragecloud/node

WORKDIR /usr/src/app

COPY packages*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

