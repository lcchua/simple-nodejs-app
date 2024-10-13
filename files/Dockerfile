FROM node:16-alpine
WORKDIR /my-app
COPY package*.json ./
COPY . .
RUN npm install
EXPOSE 8000
CMD ["node", "index.js"]
