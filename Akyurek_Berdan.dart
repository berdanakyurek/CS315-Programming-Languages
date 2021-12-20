import 'dart:convert';

foo(var k, var v) {
  print("$k: $v");
}

void main() {
  var myArray = {
    "Berdan": 21600904,
    "Omer": 21100999,
    "Eylul": 21602019,
    "Serhat": 21704354,
    "Gunes": 21602271,
    "Furkan": 21500123
  }; // Initialize
  print(myArray["Eylul"]); // Get the value for a given key
  myArray["Etga"] = 21704567; // Add a new element
  print(myArray);

  myArray.remove("Serhat"); // Remove an element
  print(myArray);

  myArray["Eylul"] = 21894459; // Modify the value of an existing element
  print(myArray);

  print(myArray.containsKey("Eylul")); // Search for the existence of a key
  print(myArray.containsKey("Serhat")); // Search for the existence of a key

  print(myArray.containsValue(21600904)); // Search for the existence of a value
  print(myArray.containsValue(21900902)); // Search for the existence of a value

  myArray.forEach((k, v) {
    // Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
    foo(k, v);
  });
}
