=begin
ASCII String Value
Write a method that determines and returns the ASCII string value of a
string that is passed in as an argument. The ASCII string value is the
sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

P
input: string
output: integer(sum of ASCII value of each character)
rules
explicit:
define a method
takes a string
returns ASCII string value
ASCII string value is sum of ASCII values of characters in string
may use #ord
implicit:
empty string is 0
questions:
Is input validation neccessary? - no mention

E
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

D
array

A
def a method `ascii_value` that takes a string `string` as a parameter
convert string to an array `chars`
loop through `chars` for every `char` element
  find the ascii value
find the sum of 'chars'
=end

def ascii_value(string)
  chars = string.chars
  chars.map! { |char| char.ord }
  chars.reduce(0, :+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

def ascii_value(string)
  string.chars.map { |char| char.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

def ascii_value(str)
  str.chars.map(&:ord).sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

def ascii_value(string)
  string.sum(&:ord)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

#  Further exploration
char = 's'
p char.ord.chr == char
#  The Integer#chr method is used to change an ord integer back to a string
#  On longer string the String#ord method only converts the first character
