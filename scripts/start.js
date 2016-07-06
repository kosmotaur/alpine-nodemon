import main from '../src';
import chokidar from 'chokidar';

const watcher = chokidar.watch('scss/**/*.scss');

main();
watcher.on('change', (path) => {
  console.log(`Change detected in ${path}`);
});
