void main() {
  
  // Associative Array Initialization
  
  var dictionaryOfDart = {
    
    'Assyria' : 'Nineveh',
    'Babylonia' : 'Babylon',
    'Sumeria' : 'Ur',
    'Persia' : 'Susa'
  };
  
  // Getting a value
  
  print("Getting the value of 'Sumeria'");
  var getValue = dictionaryOfDart['Sumeria'];
  print("Value of 'Sumeria' is: '$getValue'");
  
  // Adding an element
  
  print('\n');
  print("Adding a new element 'Egypt':");
  dictionaryOfDart.addAll({'Egypt' : 'Thebes'});
  print(dictionaryOfDart);
  print('\n');
  
  // Removing an element
  
  print("Removing the element 'Persia':");
  var removedElement = dictionaryOfDart.remove('Persia');
  
  if (removedElement != null) {
    
    print("'Persia' is successfully removed.");
  }
  else {
    
    print("'Persia' does not exist.");
  }
  print(dictionaryOfDart);
  print('\n');
  
  // Modifying an element
  
  print("Modifying the element 'Assyria': ");
  dictionaryOfDart['Assyria'] = 'Assur';
  print(dictionaryOfDart);
  print('\n');
  
  // Searching for the existence of a key
  
  print("Searching for the 'Babylonia' key:");
  
  if(dictionaryOfDart.containsKey('Babylonia')){
    
    var matchingValue = dictionaryOfDart['Babylonia'];
    print("Key is successfully found with the value '$matchingValue'.\n");
    
  }
  else{
    
    print('Key was not found\n');
  }
  
  print("Searching for the 'Rome' key:");
  if(dictionaryOfDart.containsKey('Rome')){
    
    var matchingValue = dictionaryOfDart['Rome'];
    print("Key is successfully found with the value '$matchingValue'.\n");
    
  }
  else{
    
    print('Key was not found.\n');
  }
  
  // Searching for the existence of a value
  
  print("Searching for the 'Thebes' value:");
  
  if(dictionaryOfDart.containsValue('Thebes')){
    

    print("'Thebes' is successfully found.\n");
    
  }
  else{
    
    print("'Thebes' was not found as a value.\n");
  }
  
  print("Searching for the 'Athens' value:");
  if(dictionaryOfDart.containsValue('Athens')){
    
    print("'Athens' is successfully found.\n");
    
  }
  else{
    
    print("'Athens' was not found as a value.\n");
  }
  
 
  // Function declaration and printing key-value pair
  
  print("Looping through the array: ");
  void foo(String key, String value) {

    print('$key: $value');

  }
    
  dictionaryOfDart.forEach((key,value) {

    foo(key,value);

  });
  
}
