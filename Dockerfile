FROM node:20.11.1-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENTRYPOINT ["sh","./entry-point.sh"]
