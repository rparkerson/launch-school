=begin
How long are you?

Write a method that takes a string as an argument, and returns an Array
that contains every word from the string, to which you have appended a
space, and the word length.

You may assume that words in the string are separated by exactly one space,
and that any substring of non-space characters is a word.

Examples

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == 
["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

P
input: string
output: return an array (word and word length)
rules
explicit:
words are are seperated by whitespace
assume exactly 1 whitespace between words
assume all characters are part of the words (,? - non-letters etc.)

E
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
word_lengths("It ain't easy, is it?") == 
["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
word_lengths("") == []

D
strings

A
- convert string into an array of words
- iterate through words array
  - count the length of the word
  - append that length with a space to each element
- return a new array
*map
=end

def word_lengths(str)
  str.split.map { |word| "#{word} #{word.size}" }
end

p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]
p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
p word_lengths("It ain't easy, is it?") == 
  ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
p word_lengths("") == []
