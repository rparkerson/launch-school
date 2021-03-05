=begin
Let's consider another problem. Try to work through the
"understand the problem" part of this problem on your own,
and write the input, output, and rules for it. We'll provide a
solution below. Later, we'll tackle the data structure and algorithm.

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

P
Possible questions:
What is a substring?
what is a palindrome?
will inputs always be strings?
what does it meant to treat palindrome words case-sensitively?
do we count repeat palindromes within the string?

input: string
output: array(of palindromes substrings)

rules:
Explicit requirements:
method name is palindrome_substrings
return a substrings if palindromes
palidromes are case sensitive ('dad' - palindrome and 'Dad' is not)
Implicit requirements:
a single string can have multiple palindromes and the letters can be reused
empty strings and string with no palindromes return an empty array

E 
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []
bcddcbbcddcb
D
array

A
define the method palindrome_substrings which takes 1 parameter string
intitialize an empty array palindromes
str_arr = string to array of characters
iterate through each str_arr element
save the element as char and check for each index of char in str_arr
  compare char through repeat of each index
take the elements from char to each other index of char in str arr and
  save to an array
join the array characters and compare to array characters in reverse
  if true then add to palindromes array
move on to the next element in str_arr

Given Algorithm:
Algorithm:
 - initialize a result variable to an empty array
 - create an array named substring_arr that contains all of the
   substrings of the input string that are at least 2 characters long.
 - loop through the words in the substring_arr array.
 - if the word is a palindrome, append it to the result
   array
 - return the result array

Algorithm for substring
 # for each starting index from 0 through the next to last index position
  # for each substring length from 2 until there are no substrings of that length
    # extract the substring of the indicated length starting at the indicate index position
  # end of inner loop
# end of outer loop.

Expanded:
# - create an empty array called `result` that will contain all required substrings
# - create a `starting_index` variable (value `0`) for the starting index of a substring
# - start a loop that iterates over `starting_index` from `0` to the length of the string minus 2
#   - create a `num_chars` variable (value `2`) for the length of a substring
#   - start an inner loop that iterates over `num_chars` from `2` to `string.length - starting_index`
#     - extract a substring of length `num_chars` from `string` starting at `starting_index`
#     - append the extracted substring to the `result` array
#     - increment the `num_chars` variable by `1`
#   - end the inner loop
#   - increment the `starting_index` variable by `1`
# - end the outer loop
# - return the `result` array

Formal pseudo-code:
Given a string named 'string'

SET result = []
SET starting_index = 0

WHILE starting index <= length of string - 2
    SET num_chars = 2
    WHILE num_chars <= string length - starting_index
      SET substring = num_chars characters from string starting at index starting_index
      append substring to result array
      SET num_chars = num_chars + 1
  SET starting_index = starting_index + 1

  RETURN result

END
=end

# Completed code:
def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

def is_palindrom?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []
