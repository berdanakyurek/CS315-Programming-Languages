function contains(list, x)
	for _, v in pairs(list) do
		if v == x then return true end
	end
	return false
end

function foo(k,v)
    print(k,v)
end

myArray = {["Berdan"] = 21600904, ["Omer"] = 21100999, ["Eylul"] = 21602019, ["Serhat"] = 21704354, ["Gunes"] = 21602271, ["Furkan"] = 21500123} -- Initialize 
print(myArray["Eylul"]) -- Get the value for a given key

myArray["Etga"] = 21704567 -- Add a new element
print(myArray["Etga"])

myArray["Serhat"] = nil -- Remove an element
print(myArray["Serhat"])

myArray["Eylul"] = 21894459 -- Modify the value of an existing element 
print(myArray["Eylul"])

print(myArray["Eylul"] ~= nil) -- Search for the existence of a key
print(myArray["Serhat"] ~= nil) -- Search for the existence of a key

print(contains(myArray, 21600904)) -- Search for the existence of a value
print(contains(myArray, 21901234)) -- Search for the existence of a value

for k,v in pairs(myArray) do -- Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
    foo(k,v)
end