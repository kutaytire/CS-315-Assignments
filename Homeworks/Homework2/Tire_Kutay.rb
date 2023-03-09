# Online Ruby Compiler (Interpreter)
puts "Testing Conditional Exit"
index = 0
while(index < 6)
    print "The value of index is: ", index
    puts nil
    index = index + 1
end
puts nil
puts "Testing Conditional Exit with Until Loop"
x = 5
until (x < 0)
    print "The value of x is: ", x
    x -= 1
    puts nil
end
puts nil
puts "Testing Unconditional Exit"

for i in 0..8 do
    puts i
    if(i == 4)
        break
    end
end

puts "Testing Unlabeled Exit"

index2 = 0
while(index2 < 4)
    puts nil
    print "The value of index2 is: ", index2
    puts nil,nil
    index2 = index2 + 1
    index3 = 0
    while(index3 < 8)
        print "The value of index3 is: ", index3
        puts nil
        index3 = index3 + 1
        if(index3 == 3)
            break
        end
    end
end
puts nil
puts "Testing Unlabeled Continue with 'next' Keyword"

k = 0
while k < 6
    k = k + 1
    if k == 3
        next
    end
    print k, " "
end
    
    