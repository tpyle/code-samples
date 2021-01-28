const e: number = 0.0000001;

function findSqrt(number: number) {
    let x: number = number;
    let y: number = 1;
    while (x - y > e) {
        x = (x + y) / 2;
        y = number / x;
    }
    return x;
}

if (require.main === module) {
    if (process.argv.length < 3) {
        console.error(`Error node sqrt.js <number> [<number> ...]`);
        process.exit(1);
    }

    process.argv.slice(2)
        .map(arg=>Number(arg))
        .map(arg=>`${arg} => ${findSqrt(arg)}`)
        .forEach(arg=>console.log(arg))
}