<?php
function foo($k,$v)
{
    echo $k . ": " . $v . "\n";
}

$myArray = array("Berdan" => 21600904, "Omer" => 21100999, "Eylul" => 21602019, "Serhat" => 21704354, "Gunes" => 21602271, "Furkan" => 21500123); // Initialize 
echo $myArray["Eylul"]."\n"; // Get the value for a given key

$myArray["Etga"] = 21704567; // Add a new element 
print implode(", ",$myArray)."\n";

unset($myArray["Serhat"]); // Remove an element
print implode(", ",$myArray)."\n";

$myArray["Eylul"] = 21894459; // Modify the value of an existing element
print implode(", ",$myArray)."\n"; 

if(array_key_exists("Eylul", $myArray)) echo "true\n"; else echo "false\n"; // Search for the existence of a key
if(array_key_exists("Serhat", $myArray)) echo "true\n"; else echo "false\n"; // Search for the existence of a key

if(in_array(21600904, $myArray)) echo "true\n"; else echo "false\n"; // Search for the existence of a value
if(in_array(21904562, $myArray)) echo "true\n"; else echo "false\n"; // Search for the existence of a value

foreach($myArray as $k=>$v) { // Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
    foo($k,$v);
} 
?>