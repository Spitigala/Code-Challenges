# Take an input string and for each letter, replace with the next letter in the alphabet.
# ie: "abc" becomes "bcd".

def LetterChanges(str)

  alphabet = ('a'..'z').to_a
  new_word = []
  str = str.split("")
  
  str.each do |letter|
    new_letter_index = alphabet.find_index(letter) + 1
    new_word << alphabet[new_letter_index]
  end
  
  str = new_word.join("")
  return str 
         
end

LetterChanges("test")