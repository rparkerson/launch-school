=begin
The End Is Near But Not Here
Write a method that returns the next to last word in the String passed
to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples:

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

P
input: string (of at least 2 words)
output: return string
rules
explicit:
write a method that takes a string and returns a string
return the next to last word in the string
words are any sequence of non-blank characters
assume input will always contain at least two words
implicit:
if a two word sting return the first word

E
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

D
arrays
strings

A

- split the string into an array with each word as an element
- reference the second to last element
- return that element

=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'

=begin
Further Exploration
retrieve the middle word of a phrase/sentence

edge cases:
the sentence is empty ('')
the sentence contains just 2 words
the sentence has an even number of words
trailing or leading blank characters *split corrects this
multiple blank characters            *split corrects for this

how to handle edge cases:
middleword('') => ''
middleword('just two') => 'just' (return the first word if 2 words)
the sentence contains an even number of words -
middleword('even number of words') => 'number' 
  (returns middle word closer to the beginning)

A
- split string into words array with each word as an element
- count how many elements are in the word array
  - if array number is even number of words 
    - divide that number by 2
  - if array is odd number divide by 2 and round up
  - if array is empty return empty string
- return that word referenced

=end

def middleword(string)
  return '' if string.empty?
  words_arr = string.split
  words_index = (words_arr.size - 1) / 2
  words_arr[words_index]
end

p middleword('last word') # == 'last'
p middleword('Launch School is super great!') #== 'is' (odder number)
p middleword('') # => ''
p middleword('just two') # => 'just' (return the first word if 2 words)
p middleword('even number of words') # => 'number'
p middleword('one') # => 'one'
