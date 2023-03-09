main() {
  
  print("Part 1 - Nested Subprograms");
  
  print("First Demo");
  
  int foo(x, y) {
    
    print("x: $x y: $y");
    
    int bar() {
      
      print("In bar x: $x y: $y");
      y = x + y;
      print("In bar x: $x y: $y");
      return x + y;
      
    }
    
    void foobar() {
      
      print("Calling foobar: ");
      bar();
      
    }
    
    var afterBar = bar();
    print("In foo x: $x y: $y");
    foobar();
    return afterBar;
    
  }
  
  foo(3,4);
  
  print("Second Demo");
  
  void out() {
    
    
    var element = 1;
    
    void inner1() {
      
      print("In inner1 element: $element");
    }
    
    void inner2(Function f) {
      
     f();
    }
    
    inner2(inner1);
    
  }
  
  out();
  
  print("Note that inner1() function cannot be accessed directly as it is defined in out()\n");
  
  print("Part 2 - Scope of Local Variables");
  
  print("First Demo");
  
  var global = 5;
  
  // Note that global variables can be accessed with in loop. However, the index variable cannot
  // be accessed outside the for-loop.
  for (int index = 0; index < 4; index++) {
    print("index is $index");
    global++;
    print("global is $global");
  }
  
   print("Second Demo");
  
  //print(index); --> This will give an error.
  
  var a = 0;
  while (a < 5) {
    int localb = 0; // Since localb is defined in loop, the value resets to 0 after each iteration.
    var localc = 0;
    print("localb inside while-loop is $localb");
    
    a++;;
    while (localb < 3) {
      int innerlocald = 5;
      localc++;
      print("localc is $localc");
      localb++;
    }
    
    // print(innerlocald); --> scope of innerlocald ends after the second while loop.
   
  }
  
  //print(localb); --> scope of localb ends after the while loop.
  
  print("The value of global a is: $a"); // However, a can be accessed as it is global.
  
  var t = 0;
  for (int i = 0; i < 3; i++) {
    
    var t = 2;
    print(t);
  }
  
  
  print("Part 3 - Parameter Passing Methods");
  
  print("\nDart allows passing parameters by value. \n");
  
 
  void functionPassByValue(String str, int num, Function fcn) {
    
    int res = fcn(num);
    str = str + " Tire";
    num = num + res;
    
    print("Inside the func. the value of num is $num and the value of str is $str");
    
  }
  
  int myfunc(int x) {
    
    return x + 1;
    
  }
  
  var str = "Kutay";
  var number = 5;
  
  print("Before func. call, the value of num is $number and the value of str is $str");
  
  functionPassByValue(str, number, myfunc);
  
  print("After func. call, the value of num is $number and the value of str is $str");

  print("\nCase of pass-by-reference using list as it is not a primitive type.");

  void increment(List<int> numbers) {
    
    for (int i = 0; i < numbers.length; i++) {
      numbers[i]--;
    }
  }
  
  List<int> numbersReference = [1, 2, 3, 4, 5];
  print("Before: $numbersReference");
  increment(numbersReference);
  print("After: $numbersReference");
  
  print("Part 4 - Keywords and Default Parameters");
  
  print("\nFirst Demo");
  
  int operation1(int x, int y, {int z = 5, int k = 3}) {
    
    return ((x + y) * z) - k;
    
  }
  
  // Parameters are accessed by keyword rather than order.
  
  print(operation1(3,4)); // Optional part omitted
  print(operation1(3,4, k:4)); 
  print(operation1(3,4, k:4, z:3)); // Since it is named with {}, the order of optional parameters does not matter
  
  print("\nSecond Demo");
  
  int operation2(int x, int y, [int z = 5, int k = 3]) {
    
    return ((x + y) * z) - k;
    
  }
  
  // Parameters are accessed by order.
  
  print(operation2(3,4)); // Optional part omitted
  print(operation2(3,4,4)); // z = 4 and the value of k is 3 by default
  print(operation2(3,4,2,1)); // Since it is positional with [] the order of optional parameters matter.
  print(operation2(3,4,1,2)); // z = 1, k = 2
  
  print("Part 5 - Closures");
  
  print("\nFirst Demo");
  
  
  (int number) {
    print("The value is $number");
  }(5); 
  
  print("\nSecond Demo");
  
  

  var names = ['Kutay', 'İpek', 'Doruk'];

  
  Function addToList(String name) {
    return () {
      names.add(name);
      print(names);
    };
  }

  var addDave = addToList('Simge');
  addDave(); 
  
  print("\nThird Demo");
  
  Function addTo(int number1) {
    
    return (int number2) => number1 + number2;
  }
  
  var element = addTo(4);
  print(element(8));
  
  
 
  
  
}