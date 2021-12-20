use rand::Rng;
fn main(){
    let number = 30;
    let mut tries = 0;
    //let mut rng = rand::thread_rng();
    let mut assumption = -1;
    while assumption != number {
        assumption = rand::thread_rng().gen_range(0, 100);
        tries = tries + 1;
        println!("{}",assumption);
    }
    println!("{} {}",tries, "tries");
}