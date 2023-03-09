-- Function declaration of foo()

function foo(key, value)
  print(key, ":", value)
end


-- Initialization of Associative Array

luaDictionary = {}
luaDictionary["Assyria"] = "Nineveh"
luaDictionary["Babylonia"] = "Babylon"
luaDictionary["Sumeria"] = "Ur"
luaDictionary["Persia"] = "Susa"

-- Getting a value

print("\nGetting the value of 'Sumeria'")
local value1 = luaDictionary["Sumeria"]
print("The value of Sumeria is:", value1)

-- Adding a new element

print("\nAdding the new element 'Egypt': ")
luaDictionary['Egypt'] = "Thebes"
for key, value in pairs(luaDictionary) do
       foo(key,value)
end

-- Removing an element

print("\nRemoving the element 'Persia': ")
luaDictionary['Persia'] = nil
for key, value in pairs(luaDictionary) do
       foo(key,value)
end

-- Modifying an element

print("\nModifying the value of 'Assyria': ")
luaDictionary['Assyria'] = "Assur"
for key, value in pairs(luaDictionary) do
       foo(key,value)
end

-- Searching for the existence of a key

print("\nSearching for the 'Babylonia' key:")
local foundKey = false

for key,value in pairs (luaDictionary) do
 if key == 'Babylonia' then
   foundKey = true
   break
 end
end

if foundKey then
   print("The key is successfully found.\n")
else
 print("Key was not found.\n")
end

-- The key is not found

print("\nSearching for the 'Rome' key:")
local foundKey2 = false

for key,value in pairs (luaDictionary) do
 if key == 'Rome' then
   foundKey2 = true
   break
 end
end

if foundKey2 then
   print("The key is successfully found.\n")
else
 print("Key was not found.\n")
end
     
-- Searching for the existence of a value

print("\nSearching for the 'Thebes' value:")
local foundValue = false

for key,value in pairs (luaDictionary) do
 if value == 'Thebes' then
   foundValue = true
   break
 end
end

if foundValue then
   print("The value is successfully found.\n")
else
 print("Value was not found.\n")
end

-- The value is not found

print("\nSearching for the 'Athens' value:")
local foundValue2 = false

for key,value in pairs (luaDictionary) do
 if value == 'Athens' then
   foundValue2 = true
   break
 end
end

if foundValue2 then
   print("The value is successfully found.\n")
else
 print("Value was not found.\n")
end


-- printing key-value pair

print("Looping through the array: ")
for key, value in pairs(luaDictionary) do
       foo(key,value)
end