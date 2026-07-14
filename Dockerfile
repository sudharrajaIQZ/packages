ARG NODE_VERSION=22.23.1

FROM node:${NODE_VERSION}

ARG PORT=3000

ENV NODE_ENV=development

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . ./

EXPOSE ${PORT}

CMD ["npm", "run", "dev"]