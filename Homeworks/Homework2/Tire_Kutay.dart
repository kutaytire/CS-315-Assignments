void main() {
  
  print("Testing Conditional Exit");
  
  for (int index = 0; index < 5; index++)
    
    print(index);
    
  

  print("Testing Unconditional Exit");

  for (int index = 0; index < 5; index++) {
    
    print(index);

    if (index == 2)
      
      break;
  }
  
  print("Testing Labeled Exit");
  
  outerLoop: 
  
    for (int k = 0; k < 10; k++) {
      
      print("\nThe value of k in outerloop: $k \n");
    
  
    innerLoop:
  
      for (int i = 0; i < 5; i++) {
        
        if(k == 2)
          break outerLoop;
      
   
      print("The value of i in innerloop: $i ");
        
      }
  
    }
  
  print("Outer loop is exited.");
  
  print("Testing Unlabeled Exit");
  
  outerLoop2: 
  
    for (int k = 0; k < 3; k++) {
      
      print("\nThe value of k in outerloop: $k \n");
    
  
    innerLoop2:
  
      for (int i = 0; i < 5; i++) {
        
        if(k == 1) {
          print("Inner loop will be exited for k = $k");
          break;
        }
      
   
        print("The value of i in innerloop: $i ");
        
      }
  
    }
  
  print("\nTesting Unlabeled Continue");
  
  int a = 0;
  while(a < 4){
      
     if (a == 2) {
       a++;
       continue;
     }
      
     print("The value of a is: $a");
     a++;
   
  
  }
  
  print("\nTesting Labeled Continue");
  
  outerLoop3: 
  
    for (int k = 0; k < 3; k++) {
      
      print("\nThe value of k in outerloop: $k \n");
    
  
    innerLoop3:
  
      for (int i = 0; i < 5; i++) {
        
        if(k == 1) {
          
          print("This will automatically skip to k = 2");
          continue outerLoop3;
        }
        
        if(i == 3) {
   
          continue innerLoop3;
        }
        print("The value of i in innerloop: $i ");
        
      }
  
    }
    
}

  
