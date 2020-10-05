use std::env;

fn is_prime(num: i32) -> bool {
    let limit: i32 = (num as f64).sqrt() as i32;
    for n in 2 .. limit + 1 {
        if num % n == 0 {
            return false;
        }
    }
    return true;
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() == 1 {
        eprintln!("Error: Usage {} <number> [<number> ...]", args[0]);
        std::process::exit(1);
    }

    for arg in &args[1 .. args.len()] {
        let result = arg.parse::<i32>();
        match result {
            Ok(v) if v > 1 => println!("{} => {}", v, if is_prime(v) { "true" } else { "false" }),
            _ => {
                eprintln!("Error: Expected to receive an integer greater than 1. Received {}", arg);
                std::process::exit(2);
            }
        }
    }
}
