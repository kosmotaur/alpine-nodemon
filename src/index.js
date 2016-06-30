import {createServer} from 'http';
import express from 'express';
import log from './log';

export default () => {
  const app = express();
  const server = createServer(app);
  const host = '0.0.0.0';
  const port = '8080';

  app.use('/', (req, res) => {
    res.send({
      now: Date.now()
    });
  });
  server.on('listening', () => {
    log(`Server listening at ${host}:${port}`)
  });
  server.listen(port, host);
};
