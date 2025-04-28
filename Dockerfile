FROM node:22-slim 
WORKDIR /usr/src/app
COPY ./package*.json ./
RUN npm install
RUN npm install -g nodemon

COPY . .
EXPOSE 5173

CMD [ "npm", "run", "dev-exposed" ]
