const fs = require('fs');
const readline = require('readline');


function countLines(file) {
    return new Promise((resolve, reject)=>{
        let lines = 0;
        const rl = readline.createInterface({
            input: file,
            output: process.stdout,
            terminal: false
        });

        rl.on('line', (line)=>{
            lines++;
        });

        rl.on('close', ()=>{
            resolve(lines);
        });
    });
}


if (require.main === module) {
    const [filename] = process.argv.slice(2);
    const infile = filename ? fs.createReadStream(filename) : process.stdin;
    countLines(infile).then(console.log).catch(console.error);
}
