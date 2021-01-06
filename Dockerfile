FROM node:10

WORKDIR /app

COPY package.json package-lock*.json ./

RUN npm install && npm cache clean --force

COPY . .

CMD ["node", "./bin/www"]