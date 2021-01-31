import { createReadStream } from 'fs';
import { createInterface } from 'readline';

function main(infile: any) {
    const rl = createInterface({
        input: infile,
        output: process.stdout,
        terminal: false,
    });

    rl.on('line', line => {
        console.log(line);
    });
}

if (require.main === module) {
    const [filename] = process.argv.slice(2);
    main(filename ?
        createReadStream(filename) :
        process.stdin);
}