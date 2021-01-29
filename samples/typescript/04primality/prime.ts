function isPrime(number: number) {
    const limit: number = Math.sqrt(number);
    for (let i = 2; i <= limit; i++) {
        if (number % i === 0) {
            return false;
        }
    }
    return true;
}

if (require.main === module) {
    if (process.argv.length < 3) {
        console.error('Error: Usage node prime.js <number> [<number> ...]');
        process.exit(1);
    }
    process.argv.slice(2)
        .map(string => Number(string))
        .map(n => `${n} => ${isPrime(n)}`)
        .forEach(str => console.log(str));
}