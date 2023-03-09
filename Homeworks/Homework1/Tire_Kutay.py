# Associative Array Initialization

pythonDictionary = {
    
    'Assyria' : 'Nineveh',
    'Babylonia' : 'Babylon',
    'Sumeria' : 'Ur',
    'Persia' : 'Susa'
}
  
# Getting a value

print("Getting the value of 'Sumeria'")
val1 = pythonDictionary['Sumeria']
print("The value of 'Sumeria' is: ", val1)


print("\nGetting the value of 'Persia'")
val2 = pythonDictionary.get('Persia')
print("The value of 'Persia' is: ", val2)

# Adding a new element

print("\nAdding a new element 'Egypt': ")
pythonDictionary['Egypt'] = "Thebes"
print(pythonDictionary)

# Removing an element

print("\nRemoving the element 'Persia': ")
removedElement = pythonDictionary.pop('Persia')
print(pythonDictionary)

# Modifying an element

print("\nModifying the element 'Assyria': ")
pythonDictionary['Assyria'] = "Assur"
print(pythonDictionary)

# Searching for the existence of a key

print("\nSearching for 'Babylonia' key: ")
if "Babylonia" in pythonDictionary:
    print("'Babylonia' key is found with the value: ", pythonDictionary['Babylonia'])
else:
    print("'Babylonia' key was not found.")
    
# The key is not found

print("\nSearching for 'Rome' key: ")
if "Rome" in pythonDictionary:
    print("'Rome' key is found with the value: ", pythonDictionary['Rome'])
else:
    print("'Rome' key was not found.")

# Searching for the existence of a value
print("\nSearching for 'Thebes' value: ")
if "Thebes" in pythonDictionary.values():
    print("'Thebes' value is found.")
else:
    print("'Thebes' was not found as a value.")
    
# The value is not found

print("\nSearching for 'Athens' value: ")
if "Athens" in pythonDictionary.values():
    print("'Athens' value is found.")
else:
    print("'Athens' was not found as a value.")

# Function declaration of foo() and printing key-value 

print("\nLooping through the array: ")
def foo(key, value):
    print(key, ": ", value)

for key in pythonDictionary:
    foo(key, pythonDictionary[key])

