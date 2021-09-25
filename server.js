'use strict';

const fastify = require('fastify')({logger: true});

let counter = 0;

fastify.get('/', async () => {
  return {counter};
});

fastify.get('/stat', async () => {
  return {counter: counter++};
});

fastify.get('/about', async (request, reply) => {
  reply.type('text/html');
  return `
<h3>Hello, </h3>
<b>Matvey!</b>`;
});

const start = async () => {
  try {
    await fastify.listen(process.env.PORT || 8080, '0.0.0.0');
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};

start();
