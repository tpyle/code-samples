function findSqrt(number) {
    let x = number; 
    let y = 1; 
    let e = 0.000000001; /* e decides the accuracy level*/
    while (x - y > e) { 
        x = (x + y) / 2; 
        y = number / x; 
    } 
    return x; 
}


if (require.main === module) {
    if (process.argv.length < 3) {
        console.error("Error: Usage node sqrt.js <number> [<number> ...]");
        process.exit(1);
    }
    process.argv.slice(2).map(arg=>{
        const [number] = arg;
        const _number = Number(number);
        if (isNaN(_number)) {
            console.error(`Error: <number> must be a numeric value. Received '${number}'`);
            process.exit(2);
        }
        console.log(`${number} => ${findSqrt(_number)}`);
    });
}
