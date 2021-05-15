require 'pry'
=begin
P
input : a string
output: new string with the words in reverse order
implicit requirements: 
seperate the words by whitespace
return a new string so don't modify the original
rules:
keep the same case
mental model: 
take the string seperate the words and reverse them then put them together
again as a single string
E
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
D
Arrays/strings
A
split string on white spaces into an array
reverse the order of the array items
rejoin the items in the array into a string
return the new string
=end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

p reverse_sentence('Test String')
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence(string)
  arr = []
  string.split.each do |word|
    arr.unshift(word)
  end
  arr.join(' ')
end

p reverse_sentence('Test String')
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence(str)
  reversed = []
  words = str.split
  reversed << words.pop until words.empty?
  reversed.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence(str)
  reversed = []
  str.split { |sub_str| reversed.unshift(sub_str) }
  reversed.join(' ')
end

puts reverse_sentence('') == ''
p reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
