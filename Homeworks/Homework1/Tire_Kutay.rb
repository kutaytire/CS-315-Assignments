# Associative Array Initialization

rubyDictionary = {"Assyria" => "Nineveh", "Babylonia" => "Babylon", "Sumeria" => "Ur", "Persia" => "Susa"}

# Getting a value

puts "Getting the value of 'Sumeria'"
val1 = rubyDictionary['Sumeria']
print "The value of 'Sumeria' is: ", val1
puts nil, nil 

# Adding a new element

puts "Adding a new element 'Egypt': "
rubyDictionary['Egypt'] = 'Thebes'
puts rubyDictionary

# Removing an element

puts nil, "Removing the element 'Persia': "
removedElement = rubyDictionary.delete('Persia')
if (removedElement)
    puts "'Persia' is successfully removed."
    puts rubyDictionary
else
    puts "'Persia' does not exist"
end

# Modifying an element

puts nil, "Modifying the element 'Assyria': "
rubyDictionary['Assyria'] = "Assur"
print(rubyDictionary)

# Searching for the existence of a key

puts nil,"Searching for 'Babylonia' key:"
foundBabylonia = false
rubyDictionary.each { |key, value| 
  
    if key == 'Babylonia'
        foundBabylonia = true
        break
    end
}

if (foundBabylonia)
  puts "'Babylonia' key is found."
else 
  puts "'Babylonia' key was not found."
end

# The key is not found

puts nil,"Searching for 'Rome' key:"
foundRome = false
rubyDictionary.each { |key, value| 
  
    if key == 'Rome'
        foundRome = true
        break
    end
}

if (foundRome)
  puts "'Rome' key is found."
else 
  puts "'Rome' key was not found."
end

# Searching for the existence of a value

puts nil, "Searching for 'Thebes' value"
foundThebes = false
rubyDictionary.each { |key, value| 
  
    if value == 'Thebes'
        foundThebes = true
        break
    end
}

if (foundThebes)
  puts "'Thebes' value is successfully found."
else 
  puts "'Thebes' was not found as a value."
end

# The value is not found

puts nil, "Searching for 'Athens' value"
foundAthens = false
rubyDictionary.each { |key, value| 
  
    if value == 'Athens'
        foundAthens = true
        break
    end
}

if (foundAthens)
  puts "'Athens' value is successfully found."
else 
  puts "'Athens' was not found as a value."
end

# Function declaration of foo() and printing key-value 

puts nil, "Looping through the array: "

def foo(key, value)
  puts "#{key}: #{value} "
end 

rubyDictionary.each { |key, value| 
       foo(key,value) 
}




