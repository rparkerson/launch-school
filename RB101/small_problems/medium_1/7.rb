=begin
Word to Digit
Write a method that takes a sentence string as input, and returns the same
string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:

word_to_digit('Please call me at five five five one two three four.
Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

P
input: string (sentence)
output: same string -mutate(number words as digits)
rules
explicit:
write a method
return the same string
change number words to digits (0-9)
question:
do we change numbers that are more than single digit? -not indicated
do the numbers have to be seperated by spaces? - no four.
Does the case insensitivity matter at all? no, examples quotes all lowercase

E
word_to_digit('Please call me at five five five one two three four.
Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

D
strings

A
- seach for each number word zero, one, two, three, four, five, six, seven,
  eight, nine
- replace number word with digit

- create a hash with keys as number word and values as number digits
- iterate over hash and substitute every occurance of key in string
=end
DIGIT_HASH = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 
                 'four' => '4', 'five' => '5', 'six' => '6',
                 'seven' => '7', 'eight' => '8', 'nine' => '9'}.freeze

def word_to_digit(str)
  DIGIT_HASH.each do |word, digit|
    str.gsub!(word, digit)
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Provided Solution (uses regex)
def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin
Further Exploration
There are many ways to solve this problem and different varieties of it.
Suppose, for instance, that we also want to replace uppercase and
capitalized words.

Can you change your solution so that the spaces between consecutive numbers
are removed? Suppose the string already contains two or more space separated
numbers (not words); can you leave those spaces alone, while removing any
spaces between numbers that you create?

A
check if any digits already in the string
  - if so find their indeces and do not modify their spaces
-find the index of each character match from hash
  - count from index to word length
  - if not next to a digit already there
  - and if next to a digit
  - delete the index of the space between them
  

What about dealing with phone numbers? Is there any easy way to format
the result to account for phone numbers? For our purposes, assume that
any 10 digit number is a phone number, and that the proper format should
be "(123) 456-7890".
=end
def remove_space

end

def word_to_digit(str)
  DIGIT_HASH.each do |word, digit|
    previous = str.gsub!(/\b#{word}\b/i, digit)
    p previous
  end
  str
end

p word_to_digit('Please call me at Five FIVE five one two three four. Thanks.')
