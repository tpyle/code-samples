function isPrime(number) {
    // Determines if a number is prime. Returns true or false.
    const limit = Math.sqrt(number);
    for (let i = 2; i <= limit; i++) {
        if (number % i === 0) {
            return false;
        }
    }
    return true;
}


if (require.main === module) {
    if (process.argv.length < 3) {
        console.error("Error: Usage node prime.js <number> [<number> ...]");
        process.exit(1);
    }
    process.argv.slice(2).map(arg=>{
    const number = arg;
    const _number = Number(number);
    if (isNaN(_number)) {
        console.error(`Error: <number> must be a numeric value. Received '${number}'`);
        process.exit(2);
    }
    console.log(`${number} => ${isPrime(_number)}`);
    });
}
