def foo(key, myArray)
    print key, ": ", myArray[key], "\n"
end

myArray = {"Berdan" => 21600904, "Omer" => 21100999, "Eylul" => 21602019, "Serhat" => 21704354, "Gunes" => 21602271, "Furkan" => 21500123} # Initialize 
puts myArray["Eylul"] # Get the value for a given key
myArray["Etga"] = 21704567 # Add a new element 
print myArray, "\n"

myArray.delete("Serhat") # Remove an element 
print myArray, "\n"

myArray["Eylul"] = 21894459 # Modify the value of an existing element 
print myArray, "\n"

puts myArray.has_key?("Eylul") # Search for the existence of a key
puts myArray.has_key?("Serhat") # Search for the existence of a key

puts myArray.has_value?(21600904) # Search for the existence of a value 
puts myArray.has_value?(21904567) # Search for the existence of a value 

for key in myArray.keys # Loop through an associative array, apply a function, called foo, which simply prints the key-value pair 
    foo(key, myArray)
end

