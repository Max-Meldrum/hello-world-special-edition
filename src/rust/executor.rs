use std::env;
use std::io::{self, Write};


fn main() {
    let args: Vec<String> = env::args().collect();
    match args.len() {
        3 => {
            let p = &args[1];
            let pos: i32 = match p.parse() {
                Ok(n) => {
                    n
                }
                Err(_) => {
                    -1
                }
            };
            let nlangs = &args[2];
            partial_print(pos);
            notify(pos, nlangs);
        }
        _ => {
            println!("no");
        }
    }
}


fn partial_print(pos: i32) -> () {
    if pos == 0 {
        print!("H");
    } else if pos == 1 {
        print!("e");
    } else if pos == 2 {
        print!("l");
    } else if pos == 3 {
        print!("l");
    } else if pos == 4 {
        print!("o");
    } else if pos == 5 {
        print!(" ");
    } else if pos == 6 {
        print!("W");
    } else if pos == 7 {
        print!("o");
    } else if pos == 8 {
        print!("r");
    } else if pos == 9 {
        print!("l");
    } else if pos == 10 {
        print!("d");
    } else if pos == 11 {
        print!("!");
    } else if pos == 12 {
        print!("\n");
    }

    io::stdout().flush().unwrap();
}

fn notify(pos: i32, nlangs: &String) -> () {
    println!("{}",nlangs);
    println!("{}",pos);
}
