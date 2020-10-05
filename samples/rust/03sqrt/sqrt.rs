use std::env;

static ACCURACY: f32 = 0.000001;

fn find_sqrt(num: f32) -> f32 {
    let mut x: f32 = num;
    let mut y: f32 = 1.0;
    while x - y > ACCURACY {
        x = (x+y)/2.0;
        y = num/x;
    }
    return x;
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() == 1 {
        eprintln!("Error: Usage {} <number> [<number> ...]", args[0]);
        std::process::exit(1);
    }

    for arg in &args[1 .. args.len()] {
        let result = arg.parse::<f32>();
        match result {
            Ok(v) if v > 0.0 => println!("{} => {}", v, find_sqrt(v)),
            Ok(v) => {
                eprintln!("Error: Expected to receive a positive number. Received {}", v);
                std::process::exit(3);
            },
            Err(_e) => {
                eprintln!("Error: Expected to receive a number. Received {}", arg);
                std::process::exit(2);
            }
        }
    }
}
