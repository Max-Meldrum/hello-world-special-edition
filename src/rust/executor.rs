use std::env;
use std::io::{self, Write};
use std::process::Command;


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
    if pos >= 0 && pos < 12 {
        let langs: Vec<&str> = nlangs.split_whitespace().collect();
        let target = langs[0];
        let mut new_langs = String::new().to_owned();
        for i in 1..langs.len() {
            let tmp: &str = langs[i];
            new_langs.push_str(tmp);
            new_langs.push_str(" ");
        }

        if pos == 10 {
            Command::new("./controller.sh")
                .arg(target)
                .arg((pos+1).to_string())
                .arg(target)
                .spawn()
                .expect("failed");
        } else {
            Command::new("./controller.sh")
                .arg(target)
                .arg((pos+1).to_string())
                .arg(new_langs)
                .spawn()
                .expect("failed");
        }
    }
}
