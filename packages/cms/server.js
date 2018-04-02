const Path = require('path');
require('dotenv').config({ path: Path.resolve('./.env') });

const Hapi = require('hapi');
const { Utils, S3, Mailer } = require('app_services');
const models = require('app_models');

const port = Utils.getEnv('PORT');
const server = new Hapi.Server({ port });

server.route([
  {
    method: 'GET',
    path: '/',
    handler: () => ({
      message: 'Hello message from CMS server',
      services: { S3, Mailer },
      models,
    }),
  },
  {
    method: 'GET',
    path: '/hello',
    handler: () => ({
      message: 'Hi',
    }),
  },
  {
    method: 'GET',
    path: '/clock',
    handler: () => ({
      currentServerTime: new Date().toTimeString(),
    }),
  },
]);

server.start()
  .then(() => console.log(`CMS server is running at ${port}`))
  .catch(error => console.error(error));
