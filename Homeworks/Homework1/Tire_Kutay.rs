use std::collections::HashMap;
fn main() {
   
    let mut rust_dictionary = HashMap::new();
    rust_dictionary.insert("Assyria", "Nineveh");
    rust_dictionary.insert("Babylonia", "Babylon");
    rust_dictionary.insert("Sumeria", "Ur");
    rust_dictionary.insert("Persia", "Susa");
    
    // Getting a value
    
    println!("Getting the value of 'Sumeria': ");
    let value1 = rust_dictionary.get("Sumeria");
    match value1 {
        Some(value1) => println!("The value of 'Sumeria' is: {:?}", value1),
        None => println!("The value of 'Sumeria' does not exist."),
    }
    println!();
    
    // Adding a new element
    
    println!("Adding a new element 'Egypt': ");
    rust_dictionary.insert("Egypt", "Thebes");
    println!("{:?}", rust_dictionary);
    
    // Removing an element
    
    println!();
    println!("Removing the element 'Persia': ");
    rust_dictionary.remove("Persia");
    println!("{:?}", rust_dictionary);
    
    // Modifying an element
    
    println!();
    println!("Modifying the element 'Assyria': ");
    *rust_dictionary.get_mut("Assyria").unwrap() = "Assur";
    println!("{:?}", rust_dictionary);
    
    // Searching for the existence of a key
    
    println!();
    println!("Searching for 'Babylonia' key:");
    if rust_dictionary.contains_key("Babylonia"){
        println!("'Babylonia' key is found.");
    } 
    else{
        println!("'Babylonia' key was not found.");
    }
    
    println!();    
    println!("Searching for 'Rome' key:");
    if rust_dictionary.contains_key("Rome"){
        println!("'Rome' key is found.");
    } 
    else{
        println!("'Rome' key was not found.");
    }
    
    // Searching for the existence of a value
    
    println!();
    println!("Searching for 'Thebes' value");
    let mut found_thebes = false;
    for value in rust_dictionary.values() {
        if value == &"Thebes"{
            found_thebes = true;
            break;
        }
    }
    if found_thebes{
        println!( "'Thebes' value is successfully found.");
    } 
    else {
        println!("'Thebes' was not found as a value.");
    }
        
    println!();    
    println!("Searching for 'Athens' value");
    let mut found_athens = false;
    for value in rust_dictionary.values() {
        if value == &"Athens"{
            found_athens = true;
            break;
        }
    }
    if found_athens{
        println!( "'Athens' value is successfully found.");
    } 
    else {
        println!("'Athens' was not found as a value.");
    }
    
    // Function declaration of foo() and printing key-value
    
    println!();
    println!("Looping through the array: ");
    
    fn foo(key: &&str, value: &&str){
        println!("{}: {}", key, value);
    }
    for (key, value) in &rust_dictionary{
        foo(key, value);
    }
    
   
}