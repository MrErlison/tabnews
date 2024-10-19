FROM node:latest AS build

WORKDIR /tabnews

COPY . .

RUN apt update && \
    apt install postgresql-client -y && \
    npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]
