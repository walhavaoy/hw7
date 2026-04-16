import express, { NextFunction, Request, Response } from 'express';
import path from 'path';
import pino from 'pino';

const logger = pino({ name: 'hello-world-app' });

const app = express();
const port = Number(process.env.PORT) || 3000;

app.use((req: Request, _res: Response, next: NextFunction) => {
  logger.info({ method: req.method, url: req.url }, 'incoming request');
  next();
});

app.use(express.static(path.join(__dirname, '..', 'public')));

app.get('/health', (_req: Request, res: Response) => {
  res.json({ status: 'ok' });
});

app.listen(port, () => {
  logger.info({ port }, 'Server listening');
});
