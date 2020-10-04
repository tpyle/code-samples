use std::env;

fn main() {
    let args: Vec<String> = env::args().rev().collect();
    if args.len() > 0 {
        println!("{}", &args[0 .. args.len()-1].join(" "));
    }
}
