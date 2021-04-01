=begin
All Substrings
Write a method that returns a list of all substrings of a string. The
returned list should be ordered by where in the string the substring begins.
This means that all substrings that start at position 0 should come first,
then all substrings that start at position 1, and so on. Since multiple
substrings will occur at each position, the substrings at a given position
should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the
previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

P
input: string
output: array (of all substrings)
rules
explicit:
write a method
returned array should be ordered by where the substring begins in string
return each substring from shortest to longest at each position
you may use the previous leading_substrings method
implicit:
last string element will have 1 place
if no strings return an empty array

E
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
substrings('') == []

D
array

A
- write a method that takes a string and returns an array
- find all substrings for each character in the string

- loop through substrings starting with every letter of the string
  - use the leading_substrings method to return an array
  - remove the first letter of the string
  - next iteration
  - continue until string is empty

=end

def leading_substrings(string)
  result = []
  string.each_char do |char| 
    char = result.last + char unless result.empty?
    result << char
  end
  result
end

p leading_substrings('abcde') # == ['a', 'ab', 'abc', 'abcd', 'abcde']

def substrings(string)
  result = []
  str = string
  until str.empty?
    result += leading_substrings(str)
    str = str[1..-1]
  end
  result
end

p substrings('abcde')
#                     == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
p substrings('') == []

=begin
A
- initialize an empty array
- iterate over a range of 0 to string size
- use the leading substrings for each index
- concatenate the values to an array
- return array
=end

def leading_substrings(string)
  result = ''
  string.chars.map { |char| result += char }
end

def substrings(string)
  result = []
  string.size.times do |index| 
    result += leading_substrings(string[index..-1])
  end
  result
end

p substrings('abcde')

# Provided Solution
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end
