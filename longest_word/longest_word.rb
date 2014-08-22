# Find longest word in a sentence

def LongestWord(sen)

  split_sen = sen.split
  
  sorted_split_sen = split_sen.sort_by {|x| x.length}
  return sorted_split_sen.last
         
end

LongestWord("test this sentence now")           
