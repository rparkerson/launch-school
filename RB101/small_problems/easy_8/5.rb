=begin
Palindromic Substrings
Write a method that returns a list of all substrings of a string that are
palindromic. That is, each substring must consist of the same sequence of
characters forwards as it does backwards. The return value should be
arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous
exercise.

For the purposes of this exercise, you should consider all characters and
pay attention to case; that is, "AbcbA" is a palindrome, but neither
"Abcba" nor "Abc-bA" are. In addition, assume that single characters
are not palindromes.

Examples:

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

P
input: string
output: array( of palindrome substrings)
rules
explicit:
write a method
return an array of each substring that is palindromic
palindromes are defined as being case sensitive
  - includes all characters for this exercise
  - assume single characters are not palindromes
use the substrings method from the previous exercise

E
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

D

A
- use the substrings method from previous exercise (returns array
  of all substrings )
- choose palindromes from array elements 
  - check if element is the same reversed
  - check if it also is greater than 1 character

* select method
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

def palindromes(string)
  substrings(string).select do |str|
    str.size > 1 && str.reverse == str
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

=begin
Further Exploration
Can you modify this method (and/or its predecessors) to ignore
non-alphanumeric characters and case? Alphanumeric characters are
alphabetic characters(upper and lowercase) and digits.
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

def palindromes(string)
  str = string.downcase.gsub(/[^0-9a-z]/i, '')
  substrings(str).select do |str|
    str.size > 1 && str.reverse == str #&& str.scan(/[a-z0-9]/i).join == str
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-Madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
