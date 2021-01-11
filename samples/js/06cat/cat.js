const fs = require('fs');


let stream = null;
if (process.argv.length == 3) {
    stream = fs.createReadStream(process.argv[2]);
} else if (process.argv.length > 3) {
    console.error('Error. Usage node cat.js [<file>]');
} else {
    stream = process.stdin;
}

stream.pipe(process.stdout);