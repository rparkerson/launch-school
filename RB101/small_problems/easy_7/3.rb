=begin
Capitalize Words
Write a method that takes a single String argument and returns a new string
that contains the original value of the argument with the first character
of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

P
input: string
output: new string (first characters capitalized)
rules
explicit:
write a method
takes a string
returns a new string
capitalize the first letter of all words
all other letteres lowercased
words are a sequence of non-blank characters
implicit:
"capitalize" non letter characters (they stay the same)

E
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

D
strings
arrays

A
-define a method that takes a string as its only argument
  returns a new string
- seperate each word in the string into an array of words
- capitalize each word (other letters lowercase) *capitalize
- join each element in the string with a space

=end

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap(string)
  words_array = string.downcase.split.map do |word|
    word[0] = word[0].upcase
    word
  end
  
  words_array.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin
Further Explaoration Algorithm:
- initialize a new empty string `words`
- iterate through each character in the string
  - save current character set to variable `last`
  - if `last` equals empty space
    - capitalize current character append to `words`
  - else use lowercase on current character append to `words`
- capitalize the first character in `words`
- return `words`
=end
def word_cap(string)
  last = nil
  words = ''
  
  string.each_char do |char|
    last == ' ' || last == nil ? words << char.upcase : words << char.downcase
    last = char
  end

  words
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
p word_cap('') == ''
