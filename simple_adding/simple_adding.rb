# A simple function to add a range of numbers

def SimpleAdding(num)

  num = (1..num).to_a.inject(:+)
  return num 
         
end
 
SimpleAdding(10) 