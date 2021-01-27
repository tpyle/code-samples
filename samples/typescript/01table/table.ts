function leftPad(str: string, n: number, padCharacter=" ") {
    if (padCharacter.length != 1) {
        throw new Error(`Expected 1 character padCharacter. Received '${padCharacter}'`);
    }
    if (str.length < n) {
        while (str.length < n) {
            str = padCharacter + str;
        }
    }
    return str;
}

function main() {
    const LIMIT = 5;
    for (let a: number = 0; a <= LIMIT; a++) {
        if (a == 0) {
            process.stdout.write(leftPad("", 3));
        } else {
            process.stdout.write(leftPad(String(a), 3));
        }
        for (let b: number = 1; b <= LIMIT; b++) {
            if (a == 0) {
                process.stdout.write(leftPad(String(b), 3));
            } else {
                process.stdout.write(leftPad(String(a*b), 3));
            }
        }
        process.stdout.write('\n');
    }
}

if (require.main == module) {
    main();
}