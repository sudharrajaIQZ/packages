ARG NODE_VERSION=22.23.1

FROM node:${NODE_VERSION}

ARG PORT=3000
ARG DIRECTORY=docker

ENV NODE_ENV=development

# use an absolute workdir to avoid WorkdirRelativePath linter warnings
WORKDIR ${DIRECTORY}

COPY ${DIRECTORY}/package*.json ./

RUN npm ci

COPY . ./

EXPOSE ${PORT}

CMD [ "npm", "run", "dev"]