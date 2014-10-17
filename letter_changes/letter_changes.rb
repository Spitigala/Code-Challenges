# Take an input string and for each letter, replace with the next letter in the alphabet.
# ie: "abc" becomes "bcd".


def LetterChanges(input_string, offset)

	alphabet = ('a'..'z').to_a
	new_word = []
	string = input_string.split("")

	string.each do |letter|

		current_letter_index = alphabet.find_index(letter)
		counter = 0

		while counter < offset
			if current_letter_index < (alphabet.length - 1)
				current_letter_index = current_letter_index + 1
				counter += 1 
			else
				current_letter_index = 0
				counter += 1
			end
		end

		new_word << alphabet[current_letter_index]

	end


	return new_word.join("")
         
end

p LetterChanges("test", 2) # => "vguv"

## PREVIOUS SOLUTION

=begin

def LetterChanges(input_string, offset)

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

=end