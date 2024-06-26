FROM node:18

WORKDIR /app

COPY . /app/

COPY package*.json /app/

RUN sudo npm install

RUN sudo npm run build

EXPOSE 8080

CMD ["npm", "start"]
