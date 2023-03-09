print("Testing Conditional Exit")
index = 0
while(index < 6):
    print("The value of index is: ", index)
    index += 1
print("\nTesting Unconditional Exit")

for x in range(10):
    print("The value of x is: ", x)
    if (x == 4):
        break
print("\nTesting Unlabeled Exit")

index2 = 0
while(index2 < 3):
    print("\nThe value of index2 is: ", index2, "\n")
    
    index3 = 0
    while(index3 < 7):
        print("The value of index3 is: ", index3)
        if(index3 == 3):
            break
        index3 += 1
    index2 += 1
    
print("\nTesting Unlabeled Continue")
  
a = 0
while (a < 9):
    a = a + 1
    if a == 3:
        continue
    print(a, end = " ")
print()

    
