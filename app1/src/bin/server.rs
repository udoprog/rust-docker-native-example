extern crate openssl;

use openssl::rand;

fn main() {
    let mut buf = [0; 32];
    rand::rand_bytes(&mut buf).unwrap();
    println!("rand = {:?}", buf);
}
