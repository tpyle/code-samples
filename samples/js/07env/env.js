Object.entries(process.env).sort().forEach(([k,v])=>{
    console.log(`${k}=${v}`);
});