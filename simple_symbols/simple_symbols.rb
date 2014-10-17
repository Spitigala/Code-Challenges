=begin 

Via Coderbyte.com 

Using the Ruby language, have the function SimpleSymbols(str) take the str parameter 
being passed and determine if it is an acceptable sequence by either returning the 
string true or false. The str parameter will be composed of + and = symbols with 
several letters between them (ie. ++d+===+c++==a) and for the string to be true each
letter must be surrounded by a + symbol. So the string to the left would be false. 
The string will not be empty and will have at least one letter. 

=end


def SimpleSymbols(input)

  pattern_matcher = /\+[a-z, A-Z]\+/

  if input.class == String
    string = input
  else
    return "Please provide a string"
  end

  while string.match(pattern_matcher) != nil
    string.slice!(string.match(pattern_matcher).to_s)
  end

  if string.match(/[a-z, A-Z]/)
    return "false"
  else 
    return "true"
  end

end
   
SimpleSymbols(STDIN.gets)



## PREVIOUS SOLUTION

# def SimpleSymbols(str)

#   str  = str.split("")
#   score = 0
#   counter = 0

#   str.each_with_index do |letter, index|
#     if letter.match(/[a-z]/) && index != 0 && (str[index-1] == "+" && str[index+1] == "+")
#       counter += 1
#       score += 1
#     elsif letter.match(/[a-z]/) && index == 0 || letter.match(/[a-z]/) && !(str[index-1] == "+" && str[index+1] == "+")
#       counter += 1
#       score -= 1
#     end 
#   end
  

#   if score == counter
#     str = "true"
#   else
#     str = "false"
#   end

#   return str 
         
# end