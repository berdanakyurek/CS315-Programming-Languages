use std::collections::HashMap;
fn contains_value(map: HashMap<&str, i32>, val: i32) -> bool
{
    println!("{}", map.values().Get(1));
    for i in map.values()
    {
        if i == &val
        {
            return true;
        }
        
    }
    return false;
}

fn foo( k: &str, v: i32 )
{
    println!("{}: {}", k, v);
}

fn main()
{
    let mut my_array = HashMap::new(); // Initialize

    my_array.insert("Berdan", 21600904); // Add a new element 
    my_array.insert("Omer", 21100999); // Add a new element 
    my_array.insert("Eylul", 21602019); // Add a new element 
    my_array.insert("Serhat", 21704354); // Add a new element 
    my_array.insert("Gunes", 21602271); // Add a new element 
    my_array.insert("Furkan", 21500123); // Add a new element 

    println!("{}", my_array["Eylul"]); // Get the value for a given key

    my_array.insert("Etga", 21704567); // Add a new element 

    my_array.remove("Serhat"); // Remove an element 

    //my_array["Eylul"] = 21894459; // Modify the value of an existing element 

    println!("{}", my_array.contains_key("Eylul")); // Search for the existence of a key
    println!("{}", my_array.contains_key("Serhat")); // Search for the existence of a key

    println!("{}", contains_value(my_array.clone(), 21600904) ); // Search for the existence of a value
    println!("{}", contains_value(my_array.clone(), 21903456) ); // Search for the existence of a value

    

    for (key, value) in my_array { // Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
        foo(key,value);
    }

    

}