From node:10.23.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app
COPY nest-cli.json /usr/src/app
copy tsconfig.build.json /usr/scr/app
copy tsconfig.json /usr/src/app



RUN npm install -g @nestjs/cli
RUN npm install


COPY . /usr/src/app

EXPOSE 8000

CMD ["npm", "run", "start"]

