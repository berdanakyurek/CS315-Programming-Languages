def foo(i, myArray):
    key = list(myArray.keys())[i]
    print(key, myArray[key])


myArray = {"Berdan": 21600904, "Omer": 21100999, "Eylul": 21602019, "Serhat": 21704354, "Gunes": 21602271, "Furkan": 21500123} # Initialize 
print(myArray["Eylul"]) # Get the value for a given key
myArray["Etga"] = 21704567 # Add a new element 
print(myArray)
myArray.pop("Serhat") # Remove an element 
print(myArray)
myArray["Eylul"] = 21894459 # Modify the value of an existing element 
print(myArray)

print("Eylul" in myArray)# Search for the existence of a key 
print("Serhat" in myArray)# Search for the existence of a key 

print(21600904 in myArray.values()) # Search for the existence of a value 
print(21900123 in myArray.values()) # Search for the existence of a value 



for i in range(0,len(myArray)): # Loop through an associative array, apply a function, called foo, which simply prints the key-value pair 
    foo(i,myArray)
