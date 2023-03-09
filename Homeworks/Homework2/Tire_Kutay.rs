fn main() {
    println!("Testing Conditional Exit");
    let mut index = 0;
    while index < 5 {
        println!("The value of index is: {}", index);
        index = index + 1;
    }
    println!("\nTesting Unconditional Exit");
    let mut index2 = 0;
    while index2 < 7  {
        if index2 == 3 { 
            break; 
        }
        println!("The value of index2 is: {} ", index2);
        index2 = index2 + 1;
    }  
    println!("\nTesting Labeled Exit");
    'outer: for x in 0..5 {
        println!("The value of x in outer loop is: {} \n", x, );
        'inner: for y in 0..10 {
                
                if x == 2 {
                    break 'outer;
                }
                if y == 3 {
                    break 'inner;
                }
                println!("The value of y in inner loop is: {}", y);
            }
        }
        
    println!("\nTesting Unlabeled Exit");
    'outer2: for i in 0..2 {
        println!("\nThe value of i in outer loop is: {}", i, );
        'inner2: for j in 0..10 {
                
                println!("The value of j in inner loop is: {}", j);
                if j == 3 {
                    break;
                }
                
        }
    }
    println!("\nTesting Labeled Continue");
    'outer3: for x in 0..3 {
        println!("The value of x in outer loop is: {} \n", x, );
        'inner3: for y in 0..3 {
                
                if x == 1 {
                    continue 'outer3;
                }
                if y == 2 {
                    continue 'inner3;
                }
                println!("The value of y in inner loop is: {}", y);
            }
        }
    
       
    
    println!("\nTesting Unlabeled Continue");
    let mut index3 = 0;
    while index3 < 6 {
        
        index3 = index3 + 1;
        if index3 == 2 { 
            continue; 
        }
        print!("{} ", index3);
    }
}

