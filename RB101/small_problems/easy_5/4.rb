=begin
Letter Swap
Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters
of every word are swapped.

You may assume that every word contains at least one letter, and that the
string will always contain at least one word. You may also assume that each
string contains nothing but words and spaces

Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

P
input: string(word(s) seperated by spaces)
output: string (first and last character swaped in each word)
rules/requirements
explicit:
given a string of words sepearated by spaces
every word is at least 1 letter
every string has at least 1 word
string contains only words and spaces
implicit:
string has no symbols
keep the same case - case sensitive
questions:
do we mutate the original string
mental model:
write a method that takes a string as an argument and returns a string with
the each words first last letter swapped.  Words in the string are seperated
by whitespace

Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

D
arrays

A
- Convert string to an array with each element as a seperate word
- swap the first and last letter of every word
- return the new array

create a method `swap` that takes 1 argument `string`
set string to an array `words`
loop through array `words` with every element `word`
  swap the first and last letter of every `word`
    set `first` to the first letter in 'word'
    set `last` variable to the last letter in word
    swap the first letter with `last` and last letter with `first`
return new array
=end

def swap(string)
  words = string.split

  words.map do |word|
    first = word[0]
    last = word[-1]
    word[0] = last
    word[-1] = first
    word
  end

  words.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

def swap_first_last_letter(word)
  first = word[0]
  last = word[-1]
  word[0] = last
  word[-1] = first
  word
end

def swap(string)
  words = string.split

  words.map do |word|
    swap_first_last_letter(word)
  end

  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

def swap_first_last_letter(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  words = string.split

  words.each do |word|
    swap_first_last_letter(word)
  end

  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

#  Futher exploration (would the examples below work?)
# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# swap_first_last_characters(word[0], word[-1])

# These would not work because it does not mutate the word variable like
# the other method so word isn't changed.  This returns an array [b, a]
