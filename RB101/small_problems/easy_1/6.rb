require 'pry'
=begin
P
input: string
output: given string with words reversed if more than 5 character
each string is only letters and spaces.  
spaces only if more than one word is present
mutate the calling string
mental model: check each word in the sting if it is mroe than 5 characters
and reverse the string if it is otherwise do not.
E
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
D
Array and strings
A
Seperate words in the string into an array
check each element in the array to see if it is 5 or more chars long
reverse the word in the array if true
join the words in the array
return the array
=end

def reverse_words(string)
  arr = 
  string.split.map! do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end

  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('seventy ytneves seventy ytneves') # => ytneves seventy ytneves seventy

#  example solution
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('seventy ytneves seventy ytneves') # => ytneves seventy ytneves seventy
