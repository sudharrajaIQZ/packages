### Building and running your application

When you're ready, start your application by running:
`docker compose up --build`.

Your application will be available at http://localhost:3000.

### Deploying your application to the cloud

First, build your image, e.g.: `docker build -t myapp .`.
If your cloud uses a different CPU architecture than your development
machine (e.g., you are on a Mac M1 and your cloud provider is amd64),
you'll want to build the image for that platform, e.g.:
`docker build --platform=linux/amd64 -t myapp .`.

Then, push it to your registry, e.g. `docker push myregistry.com/myapp`.

Consult Docker's [getting started](https://docs.docker.com/go/get-started-sharing/)
docs for more detail on building and pushing.

### References
* [Docker's Node.js guide](https://docs.docker.com/language/nodejs/)

<!-- 

ARG NODE_VERSION=22.23.1

FROM node:${NODE_VERSION}

ARG PORT=3000
ARG DIRECTORY=app

ENV Node_Env=dev

WORKDIR ${DIRECTORY}/frontend

COPY ${DIRECTORY}/frontend/package*.json ./

RUN npm install

COPY ${DIRECTORY}/frontend .

EXPOSE ${PORT}

CMD [ "npm", "run", "dev"]

2nd one
 
 ARG NODE_VERSION=22.23.1

FROM node:${NODE_VERSION}

ARG PORT=3000
ARG DIRECTORY=docker

ENV NODE_ENV=development

# use an absolute workdir to avoid WorkdirRelativePath linter warnings
WORKDIR ${DIRECTORY}/

COPY /${Directory}/package*.json .

RUN npm ci

COPY ${DIRECTORY} .

EXPOSE ${PORT}

CMD [ "npm", "run", "dev"]
 -->