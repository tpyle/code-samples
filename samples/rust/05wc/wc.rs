use std::fs::File;
use std::env;
use std::io::{self, BufRead};
use std::path::Path;

// The output is wrapped in a Result to allow matching on errors
// Returns an Iterator to the Reader of the lines of the file.
fn read_file_lines<P>(filename: P) -> io::Result<io::Lines<io::BufReader<File>>> where P: AsRef<Path>, {
    let file = File::open(filename)?;
    return Ok(io::BufReader::new(file).lines());
}

fn read_stdin_lines() -> io::Result<io::Lines<io::BufReader<std::io::Stdin>>> {
    return Ok(io::BufReader::new(io::stdin()).lines());
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() > 2 {
        eprintln!("Error: Usage {} [<file>]", args[0]);
        std::process::exit(1);
    }

    let mut line_count: u32 = 0;

    if args.len() == 2 {
        if let Ok(lines) = read_file_lines(args[1].clone()) {
            // Consumes the iterator, returns an (Optional) String
            for line in lines {
                if let Ok(_string) = line {
                    line_count += 1;
                }
            }
        }
    } else {
        if let Ok(lines) = read_stdin_lines() {
            // Consumes the iterator, returns an (Optional) String
            for line in lines {
                if let Ok(_string) = line {
                    line_count += 1;
                }
            }
        }
    }
    println!("{}", line_count);
}
