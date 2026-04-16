import express from 'express';
import path from 'path';
import pino from 'pino';

const logger = pino({ name: 'hello-world-app' });

const app = express();
const port = Number(process.env.PORT) || 3000;

app.use(express.static(path.join(__dirname, '..', 'public')));

app.get('/health', (_req, res) => {
  res.json({ status: 'ok' });
});

app.listen(port, () => {
  logger.info({ port }, 'Server listening');
});
