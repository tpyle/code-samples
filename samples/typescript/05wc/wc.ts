import { createReadStream } from 'fs';
import { createInterface } from 'readline';

function main(infile: any) {
    let lines = 0;
    const rl = createInterface({
        input: infile,
        output: process.stdout,
        terminal: false,
    });

    rl.on('line', line => {
        lines++;
    })

    infile.on('close', () => {
        console.log(lines);
    });
}

if (require.main === module) {
    const [filename] = process.argv.slice(2);
    main(filename ?
        createReadStream(filename) :
        process.stdin);
}