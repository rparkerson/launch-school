=begin
Leading Substrings

Write a method that returns a list of all substrings of a string that start
at the beginning of the original string. The return value should be
arranged in order from shortest to longest substring.

Examples:

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

P
input: string
output: array(of all substrings starting with first character)
rules
explicit:
create a method
takes a string as an argument
returns an array
the array should be all the substrings starting with the first character
arrange the substrings in order from shortest to longest
implicit:
empty strings should return an empty array

E

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
leading_substrings('') == []

D
arrays
strings

A
- collect all the substrings of the string
- add those substrings as elements to an array
- the array should be ordered from shortest to longest

- initialize an empty array
- iterate through all the characters in the string
  - append current character to the last element of the array (unless empty)
  - add the character to the array at the end of the array
- return the array

- convert string into an array with each character as its own element
- create an array of the combinations of substrings
=end

def leading_substrings(string)
  result = []
  string.each_char do |char| 
    char = result.last + char unless result.empty?
    result << char
  end
  result
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p leading_substrings('') == []

#  Provided Solution:
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p leading_substrings('') == []

def leading_substrings(string)
  result = []
  string.size.times { |index| result << string[0..index] }
  result
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p leading_substrings('') == []

def leading_substrings(string)
  result = ''
  string.chars.map { |char| result += char }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p leading_substrings('') == []
