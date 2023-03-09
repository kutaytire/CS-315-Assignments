
print("Testing Conditional Exit")
local index = 0
while(index < 5)
do
  print(index)
  index = index + 1
end
print("Testing Unconditional Exit")
local index2 = 0
while(index2 < 6)
do
  print(index2)
  index2 = index2 + 1
  if(index2 == 3) then
    break
  end
end
print("Testing Unlabeled Exit")
local index3 = 0
while(index3 < 5)
do
  print("The value of index3 is:", index3)
  index3 = index3 + 1
  for index4 = 0,10,1
  do
    if(index4 == 3) then
      break
    end
    print(index4)
  end
end
print("Lua does not support labeled exits, instead it uses go-to statements.")
