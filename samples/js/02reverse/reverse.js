if (require.main === module) {
    if (process.argv.length < 3) {
        console.error("Error: Usage node reverse.js <arg> [<arg> ...]");
        process.exit(1);
    }

    console.log(process.argv.slice(2).reverse().join(" "));
}
