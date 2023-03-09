<?php

// Function declaration of foo

function foo($key, $value){
    
        echo $key . ": " . $value. "<br>";
}

// Initialization of Associative Array

$phpDictionary = array("Assyria" => "Nineveh", "Babylonia" => "Babylon", "Sumeria" => "Ur", "Persia" => "Susa");

// Getting a value

echo "Getting the value of Sumeria: <br>";
$value1 = $phpDictionary["Sumeria"];
echo "The value of 'Sumeria' is " . $value1 . "<br>";

// Adding a new element

echo "<br>Adding the new element 'Egypt': <br>";
$phpDictionary['Egypt'] = "Thebes";
foreach ($phpDictionary as $key => $value) {
	foo($key, $value);
}

// Removing an element

echo "<br> Removing the element 'Persia': <br>";
unset ($phpDictionary['Persia']);
foreach ($phpDictionary as $key => $value) {
	foo($key, $value);
}

// Modifying an element

echo "<br>Modifying the element 'Assyria': <br>";
$phpDictionary['Assyria'] = "Assur";
foreach ($phpDictionary as $key => $value) {
	foo($key, $value);
}

// Searching for the existence of a key

echo "<br>Searching for 'Babylonia' key: <br>";

if (array_key_exists('Babylonia', $phpDictionary))
    echo "'Babylonia' key is successfully found.<br>";
else
    echo "The key was not found.<br>";

// The key is not found

echo "<br>Searching for 'Rome' key: <br>";

if (array_key_exists('Rome', $phpDictionary))
    echo "'Rome' key is successfully found.<br>";
else
    echo "The key was not found.<br>";

// Searching for the existence of a value

echo "<br>Searching for 'Thebes' value: <br>";

if (array_search('Thebes', $phpDictionary))
    echo "'Thebes' value is successfully found.<br>";
else
    echo "The value was not found.<br>";

// The value is not found

echo "<br>Searching for 'Athens' value: <br>";

if (array_search('Athens', $phpDictionary))
    echo "'Athens' value is successfully found.<br>";
else
    echo "The value was not found.<br>";

// Printing key-value pair

echo "<br> Looping through the array: <br>";
foreach ($phpDictionary as $key => $value) {
	foo($key, $value);
}

?>