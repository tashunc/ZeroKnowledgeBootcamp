// variables2.rs
// Make me compile! Execute the command `zustlings hint variables2` if you want a hint :)

// What happens if you annotate line 7 with a type annotation? need to initialize this as this is immutable
// What if you give x a value? all good
// What if you do both? all good
// What type should x be, anyway? default i32
// What if x is the same type as 10? What if it's a different type? same type is ok different types cant be compared


fn main() {
    let x=5;
    if x == 10 {
        println!("x is ten!");
    } else {
        println!("x is not ten!");
    }
}