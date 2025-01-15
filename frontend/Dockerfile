FROM node:20.13.1-bookworm-slim

WORKDIR /app

COPY package*.json /app
RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]