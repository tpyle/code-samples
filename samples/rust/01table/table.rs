static LIMIT: i32 = 5;


fn main() {
    for a in 0..LIMIT+1 {
        if a == 0 {
            print!("{:-3}", "");
        } else {
            print!("{:-3}", a);
        }
        for b in 1..LIMIT+1 {
            if a == 0 {
                print!("{:-3}", b);
            } else {
                print!("{:-3}", a*b);
            }
        }
        println!();
    }
}
