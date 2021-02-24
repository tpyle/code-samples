function main() {
    Object.entries(process.env).sort().forEach(([k,v])=>{
        console.log(`${k}=${v}`);
    });
}

if (require.main === module) {
    main();
}