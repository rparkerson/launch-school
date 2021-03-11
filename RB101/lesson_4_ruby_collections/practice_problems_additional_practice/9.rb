=begin
As we have seen previously we can use some built-in string methods to
change the case of a string. A notably missing method is something
provided in Rails, but not in Ruby itself...titleize.
This method in Ruby on Rails creates a string that has each word 
capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"

would be:

words = "The Flintstones Rock"

Write your own version of the rails titleize implementation.

P
input: string
output: string(each word capitalized)
rules
explicit:
Capitalize as it would be in a title
implicit:
Capitalize each word in the string
question:
How is each word capitalized in a title? -Each word

E
=> "The Flintstones Rock"

D
array

A
given a string
define method titleize that takes 1 parameter `string`
convert `string` to an array `words` divided at whitespaces
loop through `words`
  capitalize each `word` element
join the words together with whitespace ' '
return a new array
=end

words = "the flintstones rock"

def titleize(string)
  words = string.split
  
  words.map { |word| word.capitalize }.join(' ')
end

p titleize(words)


words = "the flintstones rock"

def titleize(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

p titleize(words)
