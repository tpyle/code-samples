let __left_cache = {};
function leftPad(str, n, { padCharacter=" " }={}) {
    padCharacter = String(padCharacter);
    if (padCharacter.length != 1) {
        throw "Invalid padCharacter. Should be one character";
    }
    str = String(str);
    if (str.length < n) {
        while (str.length < n) {
            str = padCharacter + str;
        }
    }
    return str;
}



if (require.main == module) {
    const LIMIT = 5;
    for (let a = 0; a <= LIMIT; a++) {
        if (a == 0) {
            process.stdout.write(leftPad("", 3));
        } else {
            process.stdout.write(leftPad(a, 3));
        }
        for (let b = 0; b <= LIMIT; b++) {
            if (a == 0) {
                process.stdout.write(leftPad(b, 3));
            } else {
                process.stdout.write(leftPad(a*b, 3));
            }
        }
        console.log();
    }
}
