# given a string, dtermine if each letter is surrounded by "+" symbols.
# ie: +a++b++c+ should return the string "true". a+b+c+ should return "false".


def SimpleSymbols(str)

  str  = str.split("")
  score = 0
  counter = 0

  str.each_with_index do |letter, index|
    if letter.match(/[a-z]/) && index != 0 && (str[index-1] == "+" && str[index+1] == "+")
      counter += 1
      score += 1
    elsif letter.match(/[a-z]/) && index == 0 || letter.match(/[a-z]/) && !(str[index-1] == "+" && str[index+1] == "+")
      counter += 1
      score -= 1
    end 
  end
  

  if score == counter
    str = "true"
  else
    str = "false"
  end

  return str 
         
end
   
SimpleSymbols(STDIN.gets)  