=begin
Clean up the words
Given a string that consists of some words (all lowercased) and an
assortment of non-alphabetic characters, write a method that returns
that string with all of the non-alphabetic characters replaced by spaces.
If one or more non-alphabetic characters occur in a row, you should only
have one space in the result (the result should never have consecutive spaces).

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

P
input: string (lowercased words and non-alphabetic characters)
output: string(mutated with just words and spaces)
rules
explicit:
given a string of some words(all lowercase)
write a method cleanup
method replaces non-alphabetic characters with spaces
have only one space for multiple non-alphabetic characters
result should never have consecutive spaces
implict:
string can end and start with a space
mutate the string (return the same string)

E
cleanup("---what's my +*& line?") == ' what s my line '

D
array

A
- create an array with valid alphabetic characters a-z
- replace every non alphabetic character with space
- remove multiple spaces in a row

initialize an array of characters a-z `valid_chars`
create a method `cleanup` that takes a parameter `string`
convert `string` to an array `chars` of each character as an element
  loop through `chars` each element `char`
    check if `valid_chars` includes `char`
      if so next iteration
    if not check if `previous` character is a empty space
      if it is `char` is set to empty string
      else `char` is set to a space
    previous = 'char'
return `string`
=end

# This approach was a dead end. Mutating array size and using index reference
# is a bad mix
# VALID_CHARS = ('a'..'z').to_a

# def cleanup(string)
#   previous = nil
#   index = 0
#   string.chars.map do |char|
#     if VALID_CHARS.include?(char)
#       index += 1
#       next
#     elsif previous == ' '
#       string[index] = ''
#       #char = ' '
#     else
#       string[index] = ' '
#       index += 1
#       char = ' '
#     end
#     previous = char
#   end
#   string
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '
# p cleanup("---what's my +*& line?") == ' what s my line '

VALID_CHARS = ('a'..'z').to_a

def just_letters(string)
  string.chars.map do |char|
    VALID_CHARS.include?(char) ? char : ' ' 
  end
end

def cleanup(string)
  just_letters(string).join.squeeze
end

p cleanup("---what's my +*& line?") #== ' what s my line '
p cleanup("---what's my +*& line?") == ' what s my line '

# Given solution
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

Solution 2

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end
