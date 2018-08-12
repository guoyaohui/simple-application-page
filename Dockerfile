FROM node:9.11.1-alpine

RUN npm install -g http-server
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8088
CMD [ "http-server", "dist" ]