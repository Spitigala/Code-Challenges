# capitalize first letter of every word in a given sentence

def LetterCapitalize(str)

  str = str.split
  str.each {|word| word.capitalize!}
  str = str.join(" ")
  
  return str 
         
end
  
LetterCapitalize("capitalize first letter of every word")  