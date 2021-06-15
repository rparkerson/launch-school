require 'pry'

=begin
Given a non-empty string check if it can be constructed by taking a substring
of it and appending multiple copies of the substring together. You may assume
the given string consists of lowercase English letters only.

Example 1
input: "abab"
output: True
Explanation: It's the substring "ab" twice.
Example 2:

Input: "aba"
Output: False

P
input: string
output: boolean
rules:
- return true if substring can construct string
- string is contructed appending multiple substrings together
- assume string is only lowercase english letter

D
strings, arrays

A
- Find all the substrings in the string
- repeat each substring until it is the length of string or greater
- compare if combined/repeated substring == original string argument

- define method find_substrings
- iterate through the string by index start end to end index
- return an array with results
=end

# def find_substrings(str)
#   result = []
#   (0..str.size - 1).each do |index1|
#     (index1..str.size - 1).each do |index2|
#       result << str[index1..index2]
#     end
#   end
#   result.uniq
# end

# def repeat_substring(sub_str, size)
#   result = ''
#   loop do
#     result << sub_str
#     break if result.size >= size
#   end
#   result
# end

# def repeated_substring_pattern(str)
#   substrings = find_substrings(str)
#   repeated = substrings.map { |sub_str| repeat_substring(sub_str, str.size) }
#   repeated.any? { |pattern| pattern == str } 
# end

# p repeated_substring_pattern("abab") #== true
# p repeated_substring_pattern("aba") == true
# p repeated_substring_pattern("aabaaba") == true
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true

=begin
- create an array of substrings
  - sub-strings are in length the factors of the string (up to half str size)
- iterate over each substring
- each subtring multiply it correct number of times
  - times = string size / substring size 
  - (will need to be evenly divisible - no remainder)
- check if multiplication is equal to the string
=end

# def find_substrings(str)
#   result = []

#   (0..(str.size / 2)).each do |index|
#     if str.size % str[0..index].size == 0
#       result << str[0..index] 
#     end
#   end
  
#   # second approach
#   # 1.upto(str.size / 2) do |substring_size|
#   #   if str.size % substring_size == 0
#   #     result << str[0, substring_size]
#   #   end
#   # end

#   result
# end

# def repeated_substring_pattern(str)
#   substrings = find_substrings(str)
#   repeated_substrings = 
#     substrings.map do |sub_str|
#       sub_str * (str.size / sub_str.size)
#     end
#     p substrings
#   repeated_substrings.any? { |pattern| pattern == str }
# end

# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aba") #== false
# p repeated_substring_pattern("aabaaba") #== false
# p repeated_substring_pattern("abaababaab") #== true
# p repeated_substring_pattern("abcabcabcabc") == true

=begin
Given an array of strings made only from lowercase letters, return an array
of all characters that show up in all strings within the given array 
(including duplicates). For example, if a character occurs 3 times in all
strings but not 4 times, you need to include that character three times in
the final answer.

P
input: array (of strings)
output: array (of strings - single characters)
rules:
- array of all lowercase letters
- return all characters that occur in each of the strings
  - include duplicate characters (if present in all strings)
- return an empty array if no common characters in all strings

D
strings, arrays, hash

A
- find the common leters of the string
- include duplicates

- initialize variable characters to an empty array 
- pick smallest string from array argument
- convert string into array of characters - assign to variable `key`

- tally every charcter within the key
- iterate through each word in the starting array argument
  - if the count of current character in `key` is the same in all other
  strings of argument array, add it to the characters array
=end

# def common_chars(arr)
#   characters = {}
#   result = []
#   arr.each do |str|
#     characters[str] = {}
#     str.chars.each do |char|
#       if characters[str].include?(char)
#         characters[str][char] += 1
#       else
#         characters[str][char] = 1
#       end
#     end
#   end

# end

# p common_chars(["bella", "label", "roller"]) #== ["e", "l", "l"]
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

# def common_chars(arr)
#   chars = arr.shift.chars

#   chars.select do |char|
#     arr.all? { |word| word.sub!(char, '') }
#   end
# end

# p common_chars(["bella", "label", "roller"]) #== ["e", "l", "l"]
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

=begin
You have to create a method that takes a positive integer number and returns
the next bigger number formed by the same digits:

12 => 21
513 => 531
2017 => 2071
If no bigger can can be composed using those digits, return -1

9 => -1
111 => -1
531 => -1

input: intger - positive
output: integer
rules:
- create a method
- take a positive integer as an argument
- return the next biggest number
  - using the same digits
- return -1 if can not be composed
- single digits will always return 1
D
integers, arrays, strings

A
- if not able to swap (1 digit) return -1
- swap the last 2 digits
  - if result > argument integer return num
  - else complete next swap
    - if no other swaps avaiable return -1

find every combination of swapped numbers
=end

# def next_bigger_num(num)
#   numbers = num.to_s.chars.permutation.map(&:join).map(&:to_i).sort
#   index = numbers.index(num)
#   numbers[index + 1] && numbers[index + 1] != num ? numbers[index + 1] : -1
# end

# p next_bigger_num(9) #== -1
# p next_bigger_num(12) #== 21
# p next_bigger_num(513) #== 531
# p next_bigger_num(2017) #== 2071
# p next_bigger_num(111) #== -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

=begin
The maximum sum subarray problem consists in finding the maximum sum of a
contiguous subsequence in an array of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
--- should be 6: [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers and the 
maximum sum is the sum of the whole array. If the array is made up of only
negative numbers, return 0 instead.

Empty array is considered to have zero greatest sum. Note that the empty
array is also a valid subarray.

P
input: array of integers (-+)
output: sum of the max subarray
rules:
- find the largest sum of subarrays
- subarray must be a contiguous subsequence
- if all positive numbers in the array then sum of the array
- return 0 if negative or an empty array
D
integer, arrays

A
- find all contiguous subsequences
- find the largest sum of subsequences

- save contiguous subsequences sub-arrays to an array
- find the sum of every subsequence and take largest one
  - if result is negative return zero
  - elsif array is empty return zero
  - else return integer(sum of subarray)
=end

# def max_sequence(arr)
#   sub_seq = sub_sequence(arr)
#   result = sub_seq.max_by { |sub_arr| sub_arr.sum }# sub_seq.map(&:sum).max
#   p result
#   if result == nil || result < 0
#     0
#   else
#     result
#   end
# end

# def sub_sequence(arr)
#   sub_seq = []
#   0.upto(arr.size - 1) do |start|
#     start.upto(arr.size - 1) do |last|
#       sub_seq << arr[start..last]
#     end
#   end
#   # returns array of subsequences
#   sub_seq
# end

# p max_sequence([]) #== 0
# # p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
# # p max_sequence([11]) == 11
# # p max_sequence([-32]) == 0
# # p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# def max_sequence(arr)
#   return 0 if arr.all? { |num| num < 0 }

#   result = []
#   (0..arr.size - 1).each do |start_index|
#     (start_index..arr.size - 1).each do |end_index|
#       result << arr[start_index..end_index]
#     end
#   end
#   result.max_by { |sub_arr| sub_arr.sum }.sum
# end

# p max_sequence([]) #== 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

=begin
Write a method to find the longest common prefix string amongst an array of
strings. If there is no common prefix, return an empty string ''.

Example 1:
input: ["flower", "flow", "flight"]
output: "fl"
Example 2:
input: ["dog", "racecar", "car"]
output: ""
Explanation: There is no common prefix among the input strings.
Note:
All given inputs are in lowercase letters a-z

Problem
input: array
output: string
rules: 
- find the prefix
- if no common prefix return an empty string

Data
arrays, strings

Algorithm
- 

- initialize result variable set to an empty string
- iterate through the chars of the first element in the array
  - if all elements has that character in the corresponding index
  add character to result string
- return result string
=end

# def common_prefix(arr)
#   result = ''
#   key = arr[0].chars
#   key.each_with_index do |char, index|
#     result << char if arr.all? { |str| str[index] == char }
#   end
#   result
# end

# p common_prefix(["flower", "flow", "flight"]) #== "fl"
# p common_prefix(["dog", "racecar", "car"]) == ""
# p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# p common_prefix(["throne", "dungeon"]) == ""
# p common_prefix(["throne", "throne"]) == "throne"

=begin
Given 2 strings, your job is to find out if there is a substring that
appears in both strings. You will return true if you find a substring
that appears in both strings, or false if you do not. We only care about
substrings that are longer that one letter long.

Problem
input: 2 strings
output: boolean
rules:
- find if a substring appears in both strings
- letters are case insensitive
- substrings are more than one letter long
- return true if common substring false otherwise

Data structures
-strings, booleans, arrays

Algorithm
- initialize substring1 substring2 arrays
- find all substrings for each string
- if any of the strings from substring1 are in substring2 array
  - return true
  - else return false 

- find substring method
  - initialize substring variable to empty array
  - iterate through 0 to string1 size - 1 (start index)
    - iterate through start index to string1 size - 1 (end index)
      take range of start index to end index append array of substrings
  - return substring array
=end

# def substring_test(str1, str2)
#   substring1 = find_substring(str1)
#   substring2 = find_substring(str2)
#   substring1.each do |sub_str|
#     return true if substring2.include?(sub_str)
#   end
#   false
# end

# def find_substring(str)
#   str = str.downcase
#   substrings = []
#     0.upto(str.size) do |start_index|
#       2.upto(str.size - start_index) do |str_size|
#         substrings << str[start_index, str_size]
#       end
#     end
#   p substrings
# end

# p substring_test('Something', 'Fun') #== false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

=begin
- iterate through each character in str1_chars array
  - iterate throuch each character in str2_chars array
    - if char1 matches char2
      - if char1 at next index1 matches char2 at next index2
      - and char1 is not at the last index (str1.size - 1)
        - return true
    - else return false
=end

# def substring_test(str1, str2)
#   str1_chars = str1.downcase.chars
#   str2_chars = str2.downcase.chars
  
#   str1_chars.each_with_index do |char1, idx1|
#     str2_chars.each_with_index do |char2, idx2|
#       if char1 == char2 && str1_chars[idx1 + 1] == str2_chars[idx2 + 1] && 
#          str1_chars[idx1 + 1] != nil
#         return true
#       end
#     end
#   end
#   false
# end

# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

=begin
Write function scramble(str1, str2) that returns true if a portion of str1
characters can be rearranged to match str2, otherwise return false.
For example:
str1 is 'rkqodlw' and str2 is 'world' the output should return true.
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
str1 is 'katas' and str2 is 'steak' should return false.
Only lower case letters will be used (a-z). No punctuation or digits will
be included.

Problem
input: 2 strings
output: boolean (true if matches)
rules:
- return true if characters can be rearranged to match other string
- return false otherwise
- letter can't be reused, must contain all the duplicates needed
- lower case letters only
- no punctuation or digits are used

Data
strings, arrays, booleans

Algorithm
# dead end
- check if the strings contain the same characters
- sort each word
- convert first and second string to an array of characters
- sort both arrays
- iterate through characters of the shorter array
  - if same index of other sorted array 

# different approach
- initialize char1 variable to str1 as an array of characters
- initialize char2 variable to str2 as an array of characters
- iterate shorter arrays 
  - substitute each letter in the longer array with a '' empty string
    - if falsy value (nil) return false
- return true
=end

# def scramble(str1, str2)
#   str1, str2 = [str1, str2].sort_by { |str| str.size }
#   chars1 = str1.chars

#   chars1.each do |char|
#     return false unless str2.sub!(char, '')
#   end
#   true
# end

# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('scriptjava', 'javascript') == true
# p scramble('scriptingjava', 'javascript') == true

# def letter_count(str)
#   str.chars.sort.map(&:to_sym).tally
# end

# p letter_count('codewars') # {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
# p letter_count('activity') # {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
# p letter_count('arithmetics') #  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})

=begin
Find the length of the longest substring in the given string that is the 
same in reverse.
As an example, if the input was "I like racecars that go fast", the substring
(racecar) length would be 7.
If the length of the input string is 0, return value must be 0.
Example:
"a" => 1
"aab" => 2
"abcde" => 1
"zzbaabcd" => 4
"" => 0

Problem
input: string
output: integer
rules:
- find the longest substring that is the same in reverse
- if the length of the substring is 0 return 0

Data structure
strings, integers, arrays

Algorithm
- find every substring
- find the substrings that is the same in reverse
- find the longestest substring that is the same in reverse

find_substring method
- initialize empty array result variable
- loop through the start index from 0 to string size - 1
  - loop start index to string size - 1
    - find every substring concat to result array
- return result array

- initialize an empty array reverse substrings
  - iterate substrings array find reversable substrings
- find the longest reverable substring and return the size
=end

# def longest_palindrome(str)
#   return 0 if str == ""
#   substrings = find_substring(str)
#   reversed = substrings.select { |sub_str| sub_str.reverse == sub_str }
#   reversed.max_by { |string| string.size }.size
# end

# def find_substring(str)
#   result = []
#   (0..str.size - 1).each do |start_index|
#     (start_index..str.size - 1).each do |end_index|
#       result << str[start_index..end_index]
#     end
#   end
#   result.uniq
# end

# p longest_palindrome("") == 0
# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baablkj12345432133d") == 9

# def longest_palindrome(str)
#   return 0 if str == ""
#   substrings = find_substring(str)
#   reversed = substrings.select { |sub_str| sub_str.reverse == sub_str }
#   result = reversed.max_by { |string| string.size }
#   if result == nil
#     0
#   else
#     result.size
#   end
# end

# def find_substring(str)
#   return [str] if str.size == 1
#   result = []
#   (0..str.size - 1).each do |start_index|
#     (2..str.size - start_index).each do |size|
#       result << str[start_index, size]
#     end
#   end
#   result.uniq
# end

# p longest_palindrome("") == 0
# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baablkj12345432133d") == 9

# result = []
# str = 'abcdef'
# arr = str.chars
# 1.upto(arr.size) { |num| arr.each_cons(num) { |combo| result << combo.join } }
# p result

# result = []
# str = 'abc'
# arr = str.chars
# 1.upto(arr.size) { |num| arr.combination(num) { |ele| result << ele.join } }
# p result 

=begin
You are going to be given an array of integers. Your job is to take that array
and find an index N where the sum of the integers to the left of N is equal
to the sum of the integers to the right of N. If there is no index that would
make this happen, return -1.

For example:
Let's say you are given the array [1, 2, 3, 4, 3, 2, 1]:
Your method will return the index 3, because at the 3rd position of the array,
the sum of left side of the index [1, 2, 3] and the sum of the right side of
the index [3, 2, 1] both equal 6.

Another one:
You are given the array [20, 10, -80, 10, 10, 15, 35]
At index 0 the left side is []
The right side is [10, -80, 10, 10, 15, 35]
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and the right side are equal.

Problem
input: array
output: integer
rules:
- return -1 if no N index
- return N index where left side sum == right side sum (don't count N index value)
- empty arrays are equal to 0
- first/last to the left/right are 0 respectively

Data structure
arrays, integers

Algorithm
- form 2 subarrays of left and right side
  - split at n index (iterate through orinal array argument)
- if leftsubarr == rightsubarr
  - return current index n
- else return -1

- if index == 0
  - left side = 0
- elsif index == -1 (last element)
  - right side = 0

  [1, 2, 3]

  [] [2, 3]  # index 0
  [1] [3]    # index 1
  [1, 2] []  # index 2


initialize counter to 0
left_side = take the first counter elements destructively
right_side = remaining array
compare left and right side
=end

# def find_even_index(arr)
#   n = -1
#   index = 0
#   loop do
#     temp_arr = arr.dup
#     temp_arr.delete_at(index)
#     left_side = temp_arr.take(index)
#     index.times { temp_arr.shift }
#     right_side = temp_arr
    
#     if left_side.sum == right_side.sum
#       n = index
#       break
#     end
#     index += 1
#     break if index >= arr.size
#   end
#   n
# end

# p find_even_index([1, 2, 3])
# p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
# p find_even_index([1, 100, 50, -51, 1, 1]) == 1 
# p find_even_index([1, 2, 3, 4, 5, 6]) == -1
# p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
# p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
# p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6 
# p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

=begin
input: integer(year)
output: string (century)
rules:
- write a method
- return what century the argument is as a string
- new centuries begin in years enidng in 01
- end string with st, nd, rd

Data structures
strings, integers, array or hash

Algorithm
- determine the century
- apply the appropriate suffix

=end

# SUFFIX = ["th", "st", "nd", "rd", "th", "th", "th", "th", "th", "th", "th", "th", "th", "th"]

# def century(year)
#   century, remainder = year.divmod(100)
#   century += 1 if remainder > 0

#   if century.to_s.size >= 2 && century.to_s[-2..-1].to_i <= 13
#     century.to_s + SUFFIX[century.to_s[-2..-1].to_i]
#   else
#     century.to_s + SUFFIX[century.to_s[-1].to_i]
#   end
# end

# p century(2000) #== '20th'
# p century(2001) #== '21st'
# p century(1965) #== '20th'
# p century(256) #== '3rd'
# p century(5) #== '1st'
# p century(10103) #== '102nd'
# p century(1052) #== '11th'
# p century(1127) #== '12th'
# p century(11201) #== '113th'

=begin
Convert a String to a Number!
The String#to_i method converts a string of numeric characters (including an
optional plus or minus sign) to an Integer. String#to_i and the Integer
constructor (Integer()) behave similarly. In this exercise, you will create
a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate
number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about
invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby
to convert a string to a number, such as String#to_i, Integer(), etc. Your
method should do this the old-fashioned way and calculate the result by
analyzing the characters in the string.

Examples:

Problem
input: string - of digits
output: integer
rules:
- do not use #to_i or Integer() methods
- given a string return the number as an integer
- do not worry about + / - signs

Data structure
integers, strings, arrays

Algorithm
- create hash or array key - string with corresponding digit 0 - 9
- convert string to individual characters in an array
- convert each character into a integer digits

conversion method
- combine the integer digits together using arimetic
  - start the first character convert using key
  - if there is another character
    - multiply first character by 10 
    - add next character
  - else return number
=end

# KEY = %w(0 1 2 3 4 5 6 7 8 9)

# def string_to_integer(str)
#   digits = str.chars
#   number = nil
#   digits.each do |str_digit|
#     integer = KEY.index(str_digit)
#     if number == nil
#       number = integer
#     else
#       number *= 10
#       number += integer
#     end
#   end
#   number
# end

# p string_to_integer('4321') #== 4321
# p string_to_integer('570') #== 570

=begin
Palindromic Substrings
Write a method that returns a list of all substrings of a string that are
palindromic. That is, each substring must consist of the same sequence of
characters forwards as it does backwards. The return value should be arranged
in the same sequence as the substrings appear in the string. Duplicate
palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous
exercise.

For the purposes of this exercise, you should consider all characters and
pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba"
nor "Abc-bA" are. In addition, assume that single characters are not
palindromes.

Problem
input: string
output: array of substrings - or empty array
rules: 
- find all the substrings that are palindromes return array
- palindromes are the same forward and backwards - count case/non-letter chars
- duplicate palindromes included multiple times
- single characters are not palindromes
- arrange based on the order they appear

Data structures
strings, arrays

Algorithm
- find every substrings
- filter substrings for palindromes - same forward and backwards *reverse

find_substrings method # return an array
initialize a variable result to an empty array
- iterate through 0 to string size - 1 (start index)
  - iterate through start_index to string size - 1
    - append substring to result array if substring == substring in reverse
      - and if string size >= 2
return result array
=end

# def palindromes(str)
#   result = []
#   0.upto(str.size - 1) do |start_index|
#     start_index.upto(str.size - 1) do |end_index|
#       sub_str = str[start_index..end_index]
#       result << sub_str if sub_str == sub_str.reverse && sub_str.size >= 2
#     end
#   end
#   result
# end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

=begin
Rotation (Part 3)
If you take a number like 735291, and rotate it to the left, you get 352917.
If you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to
321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits
to get 321579. The resulting number is called the maximum rotation of the
original number.

Write a method that takes an integer as argument, and returns the maximum
rotation of that argument. You can (and probably should) use the
rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Problem
input: integer
output: integer (maximum rotation)
rules:
- rotating is taking first number and moving it to the end
- keep the first number fixed and rotate the remaining
- continue doing this for every digit place (except the last) digit size - 1
- do not need to handle multiple zeros (leading zeros gets dropped)

Data structure
strings, integers, arrays

Algorithm
- convert number to a string
- go through each substring except the last single digit
  - 123 - 123 - 23 
- roatate first string (index 0 to string size - 1)
  - rotate next string index 1 to string size - 1
  - 0 upto string size - 1
  - use substrings pass them to rotate substring method
  - save updated value
    - add the fixed characters to rotated string


- define a rotate method
  - moves the first digit in substring to the end

=end

# def max_rotation(num)
#   str_num = num.to_s
#   0.upto(str_num.size - 1) do |index|
#     sub_str = str_num[index..-1]
#     rotated = rotate_substring(sub_str)
#     fixed_str = (str_num.chars - sub_str.chars).join
#     str_num = fixed_str + rotated
#   end
#   str_num.to_i
# end

# def rotate_substring(str_num)
#   str_arr = str_num.chars
#   str_arr << str_arr.shift
#   str_arr.join
# end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

=begin
Merge Sorted Lists
Write a method that takes two sorted Arrays as arguments, and returns a new
Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array.
You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.

Problem
input: 2 sorted arrays as arguments
output: 1 new sorted array
rules:
- return a new array of all elements from both arrays sorted
- build the array one element at a time in the proper order
  - can not sort the result array
- do not mutate the input arrays

Data structure
arrays, integers, 

Algorithm
- initialize a result variable as empty array
- initialize 2 variables as index1 index 2 for arr1 arr2
- loop through
  - if arr1 index == nil add the rest of the alternate array to result
  - if arr2 index == nil add the rest of the alternate array to result
  - if arr1 index > arr2 index appened to result array
    - increment corresponding index
  - 

=end

# def merge(arr1, arr2)
#   result = []
#   index1 = 0
#   index2 = 0
  
#   loop do
#     return result + arr2[index2..-1] if arr1[index1] == nil
#     return result + arr1[index1..-1] if arr2[index2] == nil

#     if arr1[index1] <= arr2[index2]
#       result << arr1[index1]
#       index1 += 1
#     else
#       result << arr2[index2]
#       index2 += 1
#     end
#   end
# end

# p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

=begin
Merge Sort
Sort an array of passed in values using merge sort. You can assume that this
array may contain only one type of data. And that data may be either all
numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking down the
array elements into nested sub-arrays, then recombining those nested
sub-arrays in sorted order. It is best shown by example. For instance,
let's merge sort the array [9,5,7,1]. Breaking this down into nested
sub-arrays, we get:

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

We then work our way back to a flat array by merging each pair of nested
sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

Problem
input: array (integers or strings) elements same type
output: array (sorted)
rules:
- use merge sort to sort the array 
- merge sort is a recursive algorithm
  - call itself within the method
  - uses the return value in a meaningful way
  - has some type of break condition
- can use the merge method from previous exercise

Data structure
arrays, 

Algorithm
- break up the array argument into 2 sub arrays
  - repeat this if array size is greater than 1
- compare the elements and combine then (merge method)
=end

# def merge_sort(arr)
#   return arr if arr.size == 1
#   arr1, arr2, = arr[0...(arr.size / 2.0).round], arr[(arr.size / 2.0).round..-1]
  
#   arr1 = merge_sort(arr1)
#   arr2 = merge_sort(arr2)

#   merge(arr1, arr2)
# end

# def merge(arr1, arr2)
#   result = []
#   index1 = 0
#   index2 = 0
#   loop do
#     return result + arr2[index2..-1] if arr1[index1] == nil
#     return result + arr1[index1..-1] if arr2[index2] == nil

#     if arr1[index1] <= arr2[index2]
#       result << arr1[index1]
#       index1 += 1
#     else
#       result << arr2[index2]
#       index2 += 1
#     end
#   end
# end

# p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

=begin
You are given array of integers, your task will be to count all pairs in that
array and return their count.

Notes:
    Array can be empty or contain only one value; in this case return 0
    If there are more pairs of a certain number, count each pair only once.
    E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
    Random tests: maximum array length is 1000, range of values in array is
    between 0 and 1000

Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5
[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

Problem
input: array
output: integer - count of pairs
rules:
- count all the pairs and return the count
- arrays can be empty 
  - return 0
- if no pairs return 0
- each pair is counted once

Data structure
arrays, integers

Algorithm
- determine the count of each value in the array
- divide each count by 2 (gives each pairs)
- add all the pairs together

=end

# def pairs(arr)
#   tally(arr).values.map { |count| count / 2 }.sum
# end

# def tally(arr)
#   arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
# end

# p pairs([1, 2, 5, 6, 5, 2]) # 2)
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) #, 4)
# p pairs([0, 0, 0, 0, 0, 0, 0]) #, 3 )
# p pairs([1000, 1000]) #, 1)
# p pairs([]) #, 0)
# p pairs([54]) #, 0)

=begin
Complete the solution so that it returns the number of times the search_text
is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

Problem
input: string, string
output: integer - matches found
rules:
- return the times the second argument is found in first argument

Data
strings, integers

Algorithm
- count the number of times search text appears in full text

=end

# def solution(full_text, search_text)
#   counter = 0
#   0.upto(full_text.size - search_text.size) do |index|
#     counter += 1 if full_text[index, search_text.size] == search_text
#   end
#   counter
# end

# p solution('abcdeb','b') # , 2);
# p solution('abcdeb', 'a') # , 1);
# p solution('abbc', 'bb') #, 1);

# def solution(full_text, search_text)
#   full_text.scan(search_text).size
# end

# p solution('abcdeb','b') # , 2);
# p solution('abcdeb', 'a') # , 1);
# p solution('abbc', 'bb') #, 1);

=begin
Problem
input: array (of strings - strings are all letters)
output: array (of integers - corresponding count of each element)
rules:
- return an array of the count of each corresponding letter
- if the letter in the word is in the same position as in the alphabet
  - increase the count 1
- return the count for each word
- letters are case insensitive
Data
arrays, strings, integers

Algorithm
- create a key letter to its place in the alphabet - array of all letters(lower)
- iterate through array and find the count for each string element
- return an array of counts *map

letter_match method
- initialize counter variable to 0
covert each character to lowercase
- iterate through the word - each character with index
  - if current character index == Key index for that character
    - counter += 1
- return counter

=end

# KEY = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z) 

# def solve(arr)
#   arr.map { |word| letter_match(word) }
# end

# def letter_match(str)
#   counter = 0
#   str.downcase.chars.each_with_index do |char, index|
#     counter += 1 if index == KEY.index(char)
#   end
#   counter
# end

# p solve(["abode","ABc","xyzD"])

=begin
input: string
output: integer (length of vowel substring)
rules: 
- find the longest substring of vowels (aeiou) - return the length
- lowercase strings only - alphabetic characters only

Data Structure
strings, arrays, integers

Algorithm
- find all the substrings
- filter only the substrings that include all vowels
- return the size of that longest substring of vowels

- string include only aeiou

=end

# def solve(str)
#   substrings = find_substrings(str)
#   vowels = substrings.select { |string| string.dup.delete('aeiou') == "" }
#   vowels.map(&:size).max
# end

# def find_substrings(str)
#   result = []
#   0.upto(str.size - 1) do |start_index|
#     start_index.upto(str.size - 1) do |end_index|
#       result << str[start_index..end_index]
#     end
#   end
#   result
# end

# p solve("codewarriors") # 2
# p solve("codewarriors") #,2)
# p solve("suoidea") #,3)
# p solve("iuuvgheaae") #,4)
# p solve("ultrarevolutionariees") #,3)
# p solve("strengthlessnesses") #,1)
# p solve("cuboideonavicuare") #,2)
# p solve("chrononhotonthuooaos") #,5)
# p solve("iiihoovaeaaaoougjyaw") #,8)

=begin
Algorithm
- 
=end

# def solve(str)
#   result = []
#   counter = 0
#   0.upto(str.size) do |index|
#     if %w(a e i o u).include?(str[index])
#       counter += 1
#     else
#       result << counter
#       counter = 0
#     end
#   end
#   result.max
# end

# p solve("codewarriors") # 2
# p solve("codewarriors") #,2)
# p solve("suoidea") #,3)
# p solve("iuuvgheaae") #,4)
# p solve("ultrarevolutionariees") #,3)
# p solve("strengthlessnesses") #,1)
# p solve("cuboideonavicuare") #,2)
# p solve("chrononhotonthuooaos") #,5)
# p solve("iiihoovaeaaaoougjyaw") #,8)

# def solve(str)
#   result = []
#   counter = 0
#   str.each_char do |char|
#     %w(a e i o u).include?(char) ? result << counter += 1 : counter = 0
#   end
#   result.max
# end

# p solve("codewarriors") # 2
# p solve("codewarriors") #,2)
# p solve("suoidea") #,3)
# p solve("iuuvgheaae") #,4)
# p solve("ultrarevolutionariees") #,3)
# p solve("strengthlessnesses") #,1)
# p solve("cuboideonavicuare") #,2)
# p solve("chrononhotonthuooaos") #,5)
# p solve("iiihoovaeaaaoougjyaw") #,8)

# def solve(str)
#   # str.scan(/[aeiou]+/).map(&:size).max
#   str.split(/[^aeiou]/).map(&:size).max
# end

# p solve("codewarriors") # 2
# p solve("codewarriors") #,2)
# p solve("suoidea") #,3)
# p solve("iuuvgheaae") #,4)
# p solve("ultrarevolutionariees") #,3)
# p solve("strengthlessnesses") #,1)
# p solve("cuboideonavicuare") #,2)
# p solve("chrononhotonthuooaos") #,5)
# p solve("iiihoovaeaaaoougjyaw") #,8)

=begin
Given a string of integers, return the number of odd-numbered substrings that
can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341,
a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

Problem
input: string (digits)
output: integer (count of odd-numbered substrings)
rules:
- return the odd-numbered substrings
- substring is odd if it ends in an odd number (1, 3, 5, 7, 9)
- count all the odd substrings

Data structure
strings, integers, arrays

Algorithm
- Find every substring
- filter if substring ends with an odd number
- return the count of the total of those odd-numbered substrings

- initialize result variable to an empty array
- iterate through every substring
  - if substring ends with an odd number
  - add substring to result array 
- return size of result array
=end

# def solve(str)
#   counter = 0
#   0.upto(str.size - 1) do |start_index|
#     start_index.upto(str.size - 1) do |end_index|
#        counter += 1 if str[end_index].to_i.odd?
#     end
#   end
#   counter
# end

# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28

# def solve(str)
#   str.size.downto(1).reduce(0) do |sum, index|
#     str.reverse[-index].to_i.odd? ? sum += index : sum
#   end
# end

# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28

=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word
which should be returned as a string, where n is the position of the word in
the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty
array; and each word will have enough letters.

Problem
input: array (of strings)
output: string
rules:
- given an array
- take the nth letter of each word
- combine that into a new strings
- n is the position of the string in the array

Data structure
arrays, strings, integers(index)

Algorithm
- initialize result variable to empty string
- iterate the array with the index
- take the index of the current word
  - take the character at that index
    - concatenate that to the result string
- return result string
=end

# def nth_char(arr)
#   result = ''
#   arr.each_with_index do |word, index|
#     result.concat(word[index])
#   end
#   result
# end

# p nth_char(['yoda', 'best', 'has']) == 'yes'
# p nth_char([]) == ''
# p nth_char(['X-ray']) == 'X'
# p nth_char(['No', 'No']) == 'No'
# p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

# def nth_char(arr)
#   arr.map.with_index { |word, index| word[index] }.join
# end

# p nth_char(['yoda', 'best', 'has']) == 'yes'
# p nth_char([]) == ''
# p nth_char(['X-ray']) == 'X'
# p nth_char(['No', 'No']) == 'No'
# p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

=begin
For a given nonempty string s find a minimum substring t and the maximum
number k, such that the entire string s is equal to t repeated k times.
The input string consists of lowercase latin letters. Your function should
return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string

s = "ababab"
the answer is

["ab", 3]
Example #2:

for string

s = "abcde"
the answer is

because for this string "abcde" the minimum substring t, such that s is
t repeated k times, is itself.

Problem
input: string
output: array, - [substring, largest quantity of repeats]
rules:
- find the lowest substring and maximum repeats
- return array that contains those 2 values
- string argument won't be empty
- characters are lower case

Data structure
strings, arrays, integers

Algorithm
- iterate over numbers 1 to string size
  - first quantity starting from index 0 (substring)
  - if substring * (string size / quanity) == string argument
    - return [substring, quantity]

=end

# def f(s)
#   1.upto(s.size) {|n| return [s[0, n], s.size / n] if s[0, n] * (s.size / n) == s}
# end

# p f("ababab") == ["ab", 3]
# p f("abcde") == ["abcde", 1]

###################################################
=begin
Background
There is a message that is circulating via public media that claims a reader
can easily read a message where the inner letters of each words is scrambled,
as long as the first and last letters remain the same and the word contains
all the letters. 

Another example shows that it is quite difficult to read the text where all
the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar
pattern, but instead of scrambled or reversed, ours will be sorted
alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted
alphabetically
3) punctuation should remain at the same place as it started, for example:
shan't -> sahn't

Assumptions

1) words are separatedseperated by single spaces
2) only spaces separate words, special characters do not, for example:
tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters,
for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-),
apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia

Problem
input: string
output: scrambled string
rules:
- first and last characters stay the same
- sort letters alphabetically
- using lowercase letters only (ignore capitalization)
- punctuation is limited to just -',. (these 4 characters)
- punctuation will stay at the same location
- only spaces seperate words

Data structure
strings, arrays, 

Algorithm
- initialize result variable to an empty array
- seperate string into words (split at spaces) convert to an array *split
- iterate array of words
  - for each word scramble
    - if word is 3 characters
      - append word to result array
    - 

- return array joined with spaces (now string)

define scramble method
- initialize result array
- takes string
  *- if word is 3 charactesr
    - append word to result array
  -iterate through the string with index
  if index == 0, or last index
    add that to string
    - create a sorted array of characters that are not the first last/punctuation
    - add from next sorted_alphabet unless char punctuion or first/last
- return scrambled string (result.join)
=end

# def scramble_words(str)
#   result = []
#   str.split.each do |word|
#     result << scramble(word)
#   end
#   result.join(' ')
# end

# # WIP
# def scramble(str)
#   result = []
#   sorted_alphabet = str.dup.chars
#   last = sorted_alphabet.pop until !(%w[- ' , .'].include?(last))
#   first = sorted_alphabet.shift until !(%w[- ' , .'].include?(first))
#   sorted_alphabet = sorted_alphabet.join.delete("'-.,").chars.sort
#   p sorted_alphabet
#   str.chars.each_with_index do |char, index|
#     if index == 0 || index == str.size - 1 || %w[- ' , .'].include?(char)
#       result << char
#     else
#       result << sorted_alphabet.shift
#     end
#   end
#   result.join
# end

# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words('card-carrying') == 'caac-dinrrryg'
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') #== '-dbca'
# p scramble_words('dcba.') #== 'dbca.'
#p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") #== "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

=begin
Write a function that, given a string of text (possibly with punctuation and
line-breaks), returns an array of the top-3 most occurring words, in
descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more
apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be
lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or
top-1 words should be returned, or an empty array if a text contains no words.

Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input
text.
Avoid sorting the entire array of unique words.

Problem
input: string
output: array of 3 or less strings
rules:
- return top 3 most occuring words in descending order
- words are seperated spaces
- words matches are case insensitive
- words may contain apostrophes ' (no other punctuation)
- ties broken arbitrarily
- return top 2 or 1 or empty array if less than 3 unique word matches

Data structures
strings, arrays

Algorithm
- create an array from the string argument split into words (split spaces)
- count the occurence of each uniq word

=end

# def top_3_words(text)
#   text = text.downcase.delete('^a-z\' ')
#   arr = text.downcase.split.reject { |word| word.chars.all? { |char| char == "'"} }
#   tally(arr).sort_by { |k, v| v }.reverse.to_h.keys.take(3)
# end

# def tally(arr)
#   result = {}
#   arr.each do |ele|
#     result.include?(ele) ? result[ele] += 1 : result[ele] = 1
#   end
#   result
# end


# p top_3_words("a a a  b  c c  d d d d  e e e e e") #== ["e", "d", "a"]
# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") #== ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ") == ["won't", "wont"]
# p top_3_words("  , e   .. ") == ["e"]
# p top_3_words("  ...  ") == []
# p top_3_words("  '  ") == []
# p top_3_words("  '''  ") == []
# p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
# mind, there lived not long since one of those gentlemen that keep a lance
# in the lance-rack, an old buckler, a lean hack, and a greyhound for
# coursing. An olla of rather more beef than mutton, a salad on most
# nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]

=begin
Write a function that when given a URL as a string, parses out just the domain
name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

Problem
input: string (URL)
output: string (domain name)
rules:
- return just the domain name given a URL
- select domain name
- (or reject the strings around the domain name)

data structure
- strings, arrays, regex?

Algorithm
- delete all surounding strings not the domain name
- or select the domain name

- split the string at the periods within the string *split
=end

# def domain_name(url)
#   url = url.dup.gsub('http://', '').gsub('www.', '').gsub('https://', '')
#   url.split('.').first
# end

# p domain_name("http://google.com") == "google"
# p domain_name("http://google.co.jp") == "google"
# p domain_name("www.xakep.ru") == "xakep"
# p domain_name("https://youtube.com") == "youtube"

=begin
A pangram is a sentence that contains every single letter of the alphabet at
least once. For example, the sentence "The quick brown fox jumps over the lazy
dog" is a pangram, because it uses the letters A-Z at least once (case is
irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is,
False if not. Ignore numbers and punctuation.

Problem
input: string
output: boolean
rules:
- if string argument is a panagram return true; else return false
- a panagram contains every letter in the alphabet a-z
- case insensitive

Data structure
strings, booleans, arrays

Algorithm
- create a key of every letter in the alphabet (array)
- iterate through the alphabet array
- check if every letter is included in the lowercase sentence
=end

# def panagram?(str)
#   [*'a'..'z'].all? { |letter| str.downcase.include?(letter) }
# end

# p panagram?("The quick brown fox jumps over the lazy dog.") == true
# p panagram?("This is not a pangram.") == false

=begin
Modify the kebabize function so that it converts a camel case string into a
kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:
the returned string should only contain lowercase letters

Problem
input: strings
output: string (modified)
rules:
- kebabize the string
  - covert camel case string to kebab case
- string only contain lowercase letters
- no numbers or non-letter characters

Data structures
strings, arrays

Algorithm
- initialize result variable to an empty string
- split strings at capital letters
- iterate each character
  - replace capital letter with lowercase
  - check if character is a letter
- join the words together with a -
- return result string
=end

# def kebabize(str)
#   result = ''
#   alphabet = [*'a'..'z']
#   str.each_char do |char|
#     next unless alphabet.include?(char.downcase)
#     if char.upcase == char
#       result << '-' unless result == ''
#       result << char.downcase 
#     else
#       result << char
#     end
#   end
#   result
# end

# p kebabize('myCamelCasedString') == 'my-camel-cased-string'
# p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

=begin
Polycarpus works as a 
DJ https://www.codewars.com/kata/551dc350bf4e526099000ae5/train/rubyJ in the
best Berland nightclub, and he often uses dubstep music in his performance.
Recently, he has decided to take a couple of old songs and make dubstep
remixes from them.

Let's assume that a song consists of some number of words (that don't contain
WUB). To make the dubstep remix of this song, Polycarpus inserts a certain
number of words "WUB" before the first word of the song (the number may be
zero), after the last word (the number may be zero), and between words (at
least one between any pair of neighbouring words), and then the boy glues 
together all the words, including "WUB", in one string and plays the song 
at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as
"WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't
into modern music, he decided to find out what was the initial song that
Polycarpus remixed. Help Jonny restore the original song.

Input
The input consists of a single non-empty string, consisting only of uppercase
English letters, the string's length doesn't exceed 200 characters

Output
Return the words of the initial song that Polycarpus used to make a dubsteb
remix. Separate the words with a space.

Examples
song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
=> WE ARE THE CHAMPIONS MY FRIEND

Problem
input: string
output: string
rules:
- filter/delete the "WUB"
- place spaces between the letters where appropriate
- no leading/trailing spaces
- no multiple spaces

Data structures
strings

Algorithm
- replace 'WUB' with space
- remove excess spaces and trailling/leading spaces
=end

# def song_decoder(str)
#   str.gsub('WUB', ' ').split.join(' ')
#   # str.gsub(/(WUB)+/, ' ').strip
#   # str.gsub('WUB', ' ').strip.squeeze(' ')
#   # #strip removes trailing/leading whitespace
#   # #squeeze(' ') removes duplicate spaces
# end

# p song_decoder("AWUBBWUBC") #== "A B C"
# p song_decoder("AWUBWUBWUBBWUBWUBWUBC") #== "A B C"
# p song_decoder("WUBAWUBBWUBCWUB") #== "A B C"

=begin
You live in the city of Cartesia where all roads are laid out in a perfect
grid. You arrived ten minutes too early to an appointment, so you decided
to take the opportunity to go for a short walk. The city provides its citizens
with a Walk Generating App on their phones -- everytime you press the button
it sends you an array of one-letter strings representing directions to walk
(eg. ['n', 's', 'w', 'e']). You always walk only a single block in a
direction and you know it takes you one minute to traverse one city block,
so create a function that will return true if the walk the app gives you will
take you exactly ten minutes (you don't want to be early or late!) and will,
of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment
of direction letters ('n', 's', 'e', or 'w' only). It will never give you
an empty array (that's not a walk, that's standing still!).

Problem
input: array of strings (directions)
output: boolean
rules:
- return true if the array leads back to the starting point
  - and contains 10 elements (minutes)
- return false otherwise

Data structures
arrays, booleans, integers

Algorithm
- return false if array size != 10
- initialize x variable to 0
- initialize y variable to 0
- * case statement
- interate through the array
  - if 'n' y += 1
  - if 's' y -= 1
  etc.
=end

# def is_valid_walk(arr)
#   return false if arr.size != 10
#   x = 0
#   y = 0
#   arr.each do |direction|
#     case direction
#     when 'n' then y += 1
#     when 's' then y -= 1
#     when 'e' then x += 1
#     when 'w' then x -= 1
#     end
#   end
#   x == 0 && y == 0 ? true : false
# end

# p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
# p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
# p is_valid_walk(['w']) == false
# p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false

=begin

Write a function that takes in a string of one or more words, and returns
the same string, but with all five or more letter words reversed (Just like
the name of this Kata). Strings passed in will consist of only letters and
spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

Problem
input: string
output: same string (selected words reversed)
rules:
- string has 1+ words
- return to the same string
- reverse words with 5 + letters
- spaces will be included only when more than 1 word is present
- strings will be only letters and spaces

Data structures
strings, arrays

Algorithm
- split each word over spaces convert to an array of words
- iterate through the array
  - if array has 5 + letters reverse the word *reverse!
- return orignal string
=end

# def spin_words(string)
#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#   end.join(' ')
# end

# p spin_words("Hey fellow warriors") #== "Hey wollef sroirraw"
# p spin_words("This is a test") == "This is a test" 
# p spin_words("This is another test") == "This is rehtona test"
# p spin_words(“‘test”’) == “‘test”’

# mutating
# def spin_words(string)
#   string.split.each do |word|
#     string.sub!(word, word.reverse) if word.size >= 5
#   end
#   string
# end

# p spin_words("Hey fellow warriors") #== "Hey wollef sroirraw"
# p spin_words("This is a test") == "This is a test" 
# p spin_words("This is another test") == "This is rehtona test"
# p spin_words(“‘test”’) == “‘test”’

# def spin_words(string)
#   string.split.each { |word| word.reverse! if word.size >= 5 }.join(' ')
# end

# p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"

=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in
Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

If you liked this kata, check out part 2!!

Problem
input: integer
output: string (exapanded form)
rules:
- write the integer in exapanded form
- exapanded form is each 10's place + the other places
  - '70000 + 300 + 4'
- if the digit is zero do not show that value

Data structures
integers, strings, arrays?

Algorithm
- solve using arithmatic?

- solve manipulating strings
- initialize result variable as an empty string
- convert the digits into a string
- iterate through index 0 to string size - 1 *OR characters in the string
  - if current digit is not zero
    - string[index].concat('0' * string.size - index)
    - append ' +' unless last element
=end

# def expanded_form(num)
#   result = ''
#   str = num.to_s
#   0.upto(str.size - 1) do |index|
#     if str[index] != '0'
#       previous_result = str[index]
#       result << str[index].concat('0' * (str.size - 1 - index ))
#       result << ' + ' unless (index == str.size - 1)
#     end
#   end
#   result[-3..-1] = '' if result[-1] == ' '
#   result
# end

# p expanded_form(12) #== '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'
# p expanded_form(9000000) #== '9000000'

=begin
Algorithm
- convert number into an array of digits in reverse *digits
- initialize variable result to an empty array
- iterate through the array with index
  - if number 0 go to next iteration
  - result << current number to string + '0' * index
- result reverse join together with ' + '
=end

# def expanded_form(num)
#   result = []
#   num.digits.each_with_index do |n, index|
#     next if n == 0
#     result << n.to_s + '0' * index
#   end
#   result.reverse.join(' + ')
# end

# p expanded_form(12) #== '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'
# p expanded_form(9000000) #== '9000000'

# def expanded_form(num)
#   num.digits.map.with_index {|n, i| n * 10**i}.reject(&:zero?).reverse.join( ' + ')
# end

# p expanded_form(12) #== '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'
# p expanded_form(9000000) #== '9000000'

=begin
Persistent Bugger
6 kyu
Write a function, persistence, that takes in a positive parameter num and 
returns its multiplicative persistence, which is the number of times you must
multiply the digits in num until you reach a single digit.

For example:
persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                # and 4 has only one digit

persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                 # 1*2*6=12, and finally 1*2=2

persistence(4)   # returns 0, because 4 is already a one-digit number

Problem
input: integer
output: integer (multiplicative persistence)
rules:
- return the number times the digits of the argument need to multiplied to 
reach 1 digit (multiplicative persistence)
- return 0 if already single digit

Data structure
integers, arrays

Algorithm
- convert the argument num to an array of digits
- create a loop
- multiplied variable = multiply digits 
- keep multiplying until result is a single digit
- return the number of iterates of loop
=end

# def persistence(n)
#   return 0 if n.digits.size == 1
#   counter = 1
#   multiplied = n
#   loop do
#     multiplied = multiplied.digits.reduce(:*)
#     return counter if multiplied.digits.size == 1
#     counter += 1
#   end
# end

# p persistence(39) == 3
# p persistence(4) == 0
# p persistence(25) == 2
# p persistence(999) == 4

# Refactored
# def persistence(n)
#   counter = 0
#   multiplied = n
#   loop do
#     return counter if multiplied.digits.size == 1
#     multiplied = multiplied.digits.reduce(:*)
#     counter += 1
#   end
# end

# Refactored
# def persistence(n)
#   i = 0
#   loop do
#     return i if n..to_s.size == 1
#     n = n.digits.reduce(:*)
#     i += 1
#   end
# end

=begin
6 kyu
A string is considered to be in title case if each word in the string is
either (a) capitalised (that is, only the first letter of the word is in
upper case) or (b) considered to be an exception and put entirely into lower
case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an
optional list of exceptions (minor words). The list of minor words will be
given as a string with each word separated by a space. Your function should
ignore the case of the minor words string -- it should behave in the same
way even if the case of the minor word string is changed.

Problem
input: 2 string arguments (title, exceptions)
output: string (formated title)
rules:
- change the string to title case
- title case:
  - capitilized
  - or an exception (lowercase unless it is the first word of title)

Data structure
strings, arrays

Algorithm
- split the title into an array of indivdual words - lowercase
- split the exceptions into an array words - lowercase
- iterate over the title array
  - if the word is not in the exception array
    - Capitalize each word    *capitalize destructively
- return the title array joined together
=end

# def title_case(title, exceptions = '')
#   title_arr = title.downcase.split
#   exceptions_arr = exceptions.downcase.split
#   title_arr.each_with_index do |word, index|
#     word.capitalize! if index == 0
#     word.capitalize! unless exceptions_arr.include?(word)
#   end.join(' ')
# end

# p title_case('a clash of KINGS', 'a an the of') #== 'A Clash of Kings'
# p title_case('THE WIND IN THE WILLOWS', 'The In') #== 'The Wind in the Willows'
# p title_case('the quick brown fox') == 'The Quick Brown Fox'

# def title_case(title, minor_words = '')
#   title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
# end

# def title_case(title, minor_words = '')
#   title.capitalize.split.each{|s| s.capitalize! if !minor_words.downcase.split.include?(s)}.join(' ')
# end

# p title_case('a clash of KINGS', 'a an the of') #== 'A Clash of Kings'
# p title_case('THE WIND IN THE WILLOWS', 'The In') #== 'The Wind in the Willows'
# p title_case('the quick brown fox') #== 'The Quick Brown Fox'

=begin
20. Count and Group Character Occurrences in a String
(https://www.codewars.com/kata/543e8390386034b63b001f31)
6 kyu
Write a method that takes a string as an argument and groups the number of
times each character appears in the string as a hash sorted by the highest
number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as
lowercase ones.

Problem
input: string
output: hash (keys - count value - characters (sorted alphabetically))
rules:
- group the occurence number of each character in the string as hash
- sort key by then highest occurence
- sorting the value array alphabetically
- ignore spaces, speacial characters (non-letters/numbers)
- ignore case - uppercase letters count as lowercase

Data Structure
- hashes, strings, arrays, integer

Algorithm
- initialize result variable to an empty hash {}
- filter the string to just numbers/letter characters - use all downcase
- split up the string into individual characters
- iterate through each charcter
- count each character
  - if count exists
  - add to count array

  - if hash key does not exist 
    - add count as the key with character into the array

=end

# def get_char_count(string)
#   result = {}
#   filtered_string = string.downcase.delete('^a-z0-9')
#   filtered_string.chars.uniq.sort.each do |char|
#     count = filtered_string.count(char)
#     if result.include?(count)
#       result[count] << char 
#     else
#       result[count] = [char]
#     end
#   end
#   result.sort_by { |k, v| -k }.to_h
# end

# p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
# p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

# def get_char_count(str)
#   arr = str.downcase.scan(/[a-z0-9]/)
#   arr.uniq.sort.group_by { |char| arr.count(char) } 
#   #.sort.reverse.to_h test case == does not check for this
# end

# p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
# p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

=begin
21. Find the Mine!
(https://www.codewars.com/kata/528d9adf0e03778b9e00067e/train/ruby)
6 kyu
You've just discovered a square (NxN) field and you notice a warning sign.
The sign states that there's a single bomb in the 2D grid-like field in front
of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and
returns the location of the mine. The mine is represented as the integer 1
in the 2D array. Areas in the 2D array that are not the mine will be
represented as 0s.

The location returned should be an array (Tuple<int, int> in C#) where the
first element is the row index, and the second element is the column index
of the bomb location (both should be 0 based). All 2D arrays passed into
your function will be square (NxN), and there will only be one mine in the
array.

Problem
input: array of arrays 2D array
output: array - 2 elements row index, column index
rules:
- find the local of the 1(mine) in the 2 dimensional array
- return the row and column as an array
- all non-mines are 0's
- array will be square (sub-array size == number of array elements)

Data structure
arrays, integers

Algorithm
- search through the array of arrays until you find 1 and return index
- iterate through 0 upto the array size - 1 parameter row
  - iterate thorugh array size to array size - 1 parameter - column
    - if current element == 1 return row/column as an array
=end

# def mine_location(field)
#   0.upto(field.size - 1) do |row_index|
#     0.upto(field.size - 1) do |column_index|
#       return [row_index, column_index] if field[row_index][column_index] == 1
#     end
#   end
# end

# p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
# p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
# p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
# p mine_location([ [1, 0], [0, 0] ]) == [0, 0]
# p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
# p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

=begin
22. Scramblies
(https://www.codewars.com/kata/55c04b4cc56a697bb0000048/train/ruby)
5 kyu
Complete the function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will
be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.

Problem
input: 2 string arguments
output: boolean
rules:
- return true if str1 can be scrambled to form str2
- counts of characters matter ('a' can not form 'aa')
- return false otherwise
- use only lowercase letters 
- no digits or punctuation
- consider performance

Data Structure
strings, boolean, arrays

Algorithm
- convert the first str1 argument into an array of characters
- convert the str2 argument into an array of characters

- iterate through str2 array with just unique characters
  - scan array and make sure the count is 1 or less

  - delete current character from str1 array
    - if that returns nil (return false)
    - otherwise return true
=end

# def scramble(str1, str2)
#   str1_arr = str1.chars
#   str2_arr = str2.chars
#   str2_arr.uniq.each do |char|
#     return false if str1_arr.count(char) < str2_arr.count(char)
#   end
#   true
# end

#refactored
# def scramble(s1,s2)
#   s2.chars.uniq.each do |char|
#     return false if s1.count(char) < s2.count(char)
#   end
#   true
# end

# p scramble('rkqodlw', 'world') #== true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true

=begin
23. Longest alphabetical substring
(https://www.codewars.com/kata/5a7f58c00025e917f30000f1)
6 kyu
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf"
is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code
will need to be efficient.

The input will only consist of lowercase characters and will be at least
one letter long.

If there are multiple solutions, return the one that appears first.

Problem
input: string
output: string (longest alphabetical substring)
rules:
- return the longest substring in alphabetical order
- be efficient to work with up to 10,000 characters
- input will be all lowercase characters
- input will be at least 1 letter
- for multiple solutions appear the one that appears first
  - first letter furthest to the left reading left to right

Data structure
string, arrays

Algorithm
- initialize substring variable to empty string ''
- finding all substrings
- iterate through the string / or an array of characters with index
  - find from left to right
  - save the substring that is the longest to a variable substring
    - if current substring is longer than `substring` reassign to current substr

=end

# No very efficient
# def longest(str)
#   substr = ''
#   str.chars.each_with_index do |char, start_index|
#     0.upto(str.size - 1) do |end_index|
#       current_substr = str[start_index..end_index]
#       next unless current_substr.chars.sort.join == current_substr
#       substr = current_substr if current_substr.size > substr.size
#     end
#   end
#   substr
# end

# p longest('asd') #== 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

# def longest(str)
#   substr = ''
#   str.chars.each_with_index do |char, start_index|
#     0.upto(str.size - 1) do |end_index|
#       current_substr = str[start_index..end_index]
#       next unless alphabetical?(current_substr)
#       substr = current_substr if current_substr.size > substr.size
#     end
#   end
#   substr
# end

# def alphabetical?(str)
#   previous = 0
#   str.chars.all? do |char|
#     result = char.ord >= previous
#     previous = char.ord
#     result
#   end
# end

# p alphabetical?('asd')
# p longest('asd') #== 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

# def longest(str)
#   substr = ''
#   0.upto(str.size - 1) do |index|
#     current_substr = str[index]
#     loop do
#       index += 1
#       break if str[index] == nil || str[index] < str[index - 1]
#       current_substr << str[index]
#     end
#     substr = current_substr if current_substr.size > substr.size
#   end
#   substr
# end

# p longest('asd') #== 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

# # Refactored
# def longest(str)
#   result = ''
#   0.upto(str.size - 1) do |index|
#     substr = str[index]
#     loop do
#       index += 1
#       break if str[index] == nil || str[index] < str[index - 1]
#       substr << str[index]
#     end
#     result = substr if substr.size > result.size
#   end
#   result
# end

# def longest(str)
#   str.chars.slice_when { |a, b| a > b }
#            .max_by(&:size)
#            .join
# end

# REGEX = ('a'..'z').to_a.join('*') + '*'
# def longest(s)
#   s.scan(/#{REGEX}/).max_by(&:size)
# end

# def longest(s)
#   s.each_char.slice_when(&:>).max_by(&:size).join
# end

# def longest(s)
#   s
#    .chars
#    .chunk_while { |a,b| a == b || a.succ == b || a < b }
#    .to_a
#    .max_by(&:size)
#    .join
#  end

#  def longest s
#   s.chars.chunk_while{|x, y| x <= y}.max_by(&:size).join
# end

# def longest(str)
#   str.each_char.slice_when { |a, b| a > b }.to_a.max_by(&:size).join
# end

# p longest('asd') #== 'as'
# p longest('nab') #== 'ab'
# p longest('abcdeapbcdef') #== 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') #== 'aaaabbbbctt'
# p longest('asdfbyfgiklag') #=='fgikl'
# p longest('z') #== 'z'
# p longest('zyba') #== 'z'

=begin
24. The Hashtag Generator
(https://www.codewars.com/kata/52449b062fb80683ec000024)
5 kyu
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  
                                      =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

Problem
input: string
output: string or boolean false
rules:
- return false if string is empty or more than 140 characters
- return hashtag
  - starts with # (hash is part of character limit)
  - capitalize each word(other letters are lowercase)
  - remove all spaces

Data structure
- string, booleans, array

Algorithm
- initialize words variable to the string split over each word as an array
- iterate over words return a new array (result) with index *map
- add a hash to first word if index == 0
- capitalize each word
- join new array
- return false if string is empty or hash > 140 characters
  - else return result array

=end

# def generateHashtag(str)
#   words = str.split
#   return false if str.empty? || str.squeeze == " " || words.join.size > 139
#   words.map.with_index do |word, index|
#     index == 0 ? '#' + word.capitalize : word.capitalize
#   end.join
# end

# def generateHashtag(str)
#   str = '#' + str.split.map(&:capitalize).join
#   str.size <= 140 && str.size > 1 ? str : false
# end

# p generateHashtag("") == false
# p generateHashtag(" " * 200) == false
# p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
# p generateHashtag("Codewars") == "#Codewars"
# p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
# p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
# p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
# p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
# p generateHashtag("a" * 139) == "#A" + "a" * 138
# p generateHashtag("a" * 140) == false

=begin
25. Pete, the baker
(https://www.codewars.com/kata/525c65e51bf619685c000059/train/ruby)
5 kyu
Pete likes to bake some cakes. He has some recipes and ingredients.
Unfortunately he is not good in maths. Can you help him to find out,
how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available
ingredients (also an object) and returns the maximum number of cakes Pete
can bake (integer). For simplicity there are no units for the amounts
(e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients
that are not present in the objects, can be considered as 0.

Examples:

// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, 
{flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
// must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, 
{sugar: 500, flour: 2000, milk: 2000});

Problem
input: 2 hashes (recipe, available ingredients)
output: integer (quanity of items)
rules:
- return the maximum number of cakes (integer)
- ingredients don't use units of measurement
- if ingredients are not listed then consider it zero
- lowest limiting value will determine how many cakes can be made
- empty {} is considered 0

Data structures
hashes, integers

Algorithm
- if there are less ingredients in the availble than in recipe return 0
- divide ever ingredient value(recipe) by each corresponding key in availble hash
- take the lowest number and return that integer
=end

# def cakes(recipe, available)
#   return 0 if recipe.size > available.size
#   recipe.map do |ingredient, quanity|
#     available[ingredient] / recipe[ingredient]
#   end.min
# end

# def cakes(recipe, available)
#   # return 0 if recipe.size > available.size # optional
#   recipe.map do |ingredient, quanity|
#     return 0 unless available.include?(ingredient)
#     available[ingredient] / quanity
#   end.min
# end

# def cakes(recipe, available)
#   recipe.map { |k, v| available[k].to_i / v }.min
# end

# p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) #== 2
# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) #== 11
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
# p cakes({"eggs"=>4, "flour"=>400},{}) == 0
# p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) #== 1

=begin
26. Mean Square Error
(https://www.codewars.com/kata/51edd51599a189fe7f000015/train/ruby)
Complete the function that
accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in
the other. squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between
each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

Problem
input: 2 arrays as arguments (contain integers)
output: integer/float
rules:
- take the absolute difference between each integer at the same index
  - square those differences / array size
- return the average
- use floats if the average is not an integer/whole number

Data structure
arrays, integers, floats

Algorithm
- find the difference between index arrays (absolute value)
- add the difference
- divide the difference the array size
- round appropriatly

find the difference between 2 numbers
find how far from 0 each number is then add 
([10, 20, 10, 2], [10, 25, 5, -2]) -> (0 + 25 + 25 + 16) / 4
++ : -                      (a1 - a2).abs
if +- then add abs values   (a1 - -a2).abs  or (-a1 - a2).abs
if -- then subtract then take abs (-3 - -2)   (-a1 - -a2).abs
=end

# def solution(arr1, arr2)
#   (0..arr1.size - 1).map do |index|
#     if [arr1[index], arr2[index]].all? { |n| n.negative? }
#       (arr1[index] - arr2[index]).abs
#     elsif [arr1[index], arr2[index]].all? { |n| n.positive? }
#       (arr1[index] - arr2[index])
#     else
#       (arr1[index].abs + arr2[index].abs)
#     end
#   end.map { |num| num**2 }.sum / arr1.size.to_f
# end

# def solution(arr1, arr2)
#   (0..arr1.size - 1).map do |index|
#     ((arr1[index] - arr2[index]).abs)**2
#   end.sum / arr1.size.to_f
# end

# def solution(arr1, arr2)
#   arr1.map.with_index { |n, i| (n - arr2[i]).abs**2 }.sum / arr1.size.to_f
# end

# p solution([1, 2, 3], [4, 5, 6]) == 9
# p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
# p solution([-1, 0], [0, -1]) == 1

=begin
27. Exponent method
(https://www.codewars.com/kata/5251f63bdc71af49250002d8)
5 kyu
Create a method called "power" that takes two integers and returns the value
of the first argument raised to the power of the second. Return nil if the
second argument is negative.

Note: The ** operator has been disabled.

input: 2 integers
output: integer (first argument raised to the power of the second)
rules:
- raise the first to the power of the second
- do no **
- return nil if the argumenet 2 is negative

Data
- integers,

Algorithm
- 2 ** 3 = 2 * 2 * 2
- multiply argument 1 by iteself exponent times
- return nil if exponent is negative

=end

# def power(base, exponent)
#   return nil if exponent.negative?
#   return 1 if exponent == 0
#   result = base
#   (exponent - 1).times { result *= base }
#   result 
# end

# def power(base, exponent)
#   exponent.times.reduce(1) { |product| product * base } unless exponent < 0
# end

# p power(2, 3) #== 8
# p power(10, 0) #== 1
# p power(-5, 3) #== -125
# p power(-4, 2) == 16
# p power(10, 0) == 1
# p power(2, 3) == 8
# p power(3, 2) == 9
# p power(-5, 3) == -125
# p power(-4, 2) == 16
# p power(8, -2) == nil

=begin
28. Where my anagrams at?
(https://www.codewars.com/kata/523a86aa4230ebb5420001e1)
5 kyu
What is an anagram? Well, two words are anagrams of each other if they both
contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list.
You will be given two inputs a word and an array with words. You should
return an array of all the anagrams or an empty array if there are none.

Problem
input: 2 arguments , string, array 
output: array - contains the words from the array argument that are anagrams
rules:
- return the anagrams from the list in an array
- return an empty array if there are no matches

Data structure
strings, arrays

Algorithm
- iterate through array argument
  - element check if string argument is an anagram
  - sorting both strings if they both match then they are anagrams

=end

# def anagrams(word, words)
#   words.select { |test_word| test_word.chars.sort.join == word.chars.sort.join }
# end

# p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
# p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
# p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

=begin
29. Split Strings
(https://www.codewars.com/kata/515de9ae9dcfc28eb6000001)
6 kyu
Complete the solution so that it splits the string into pairs of two
characters. If the string contains an odd number of characters then it
should replace the missing second character of the final pair with an
underscore ('_').

input: string
output: array
rules:
- return an array of pairs (as strings)
- if there is no pair (string size is odd) return the last pair with _

Data structure
strings, arrays

Algorithm
- concat an _ to the string if string size is odd
- form pairs of 2 in an array
=end

# def solution(str)
#   str << '_' if str.size.odd?
#   result = []
#   str.chars.each_with_index do |char, index|
#     next if index.odd?
#     result << str[index, 2]
#   end
#   result
# end

# def solution(str)
#   str << '_' if str.size.odd?
#   result = []
#   str.size.times { |index| result << str[index, 2] if index.even? }
#   result
# end

# def solution(str)
#   str << '_' if str.size.odd?
#   str.chars.each_slice(2).map(&:join)
# end

# def solution
#   (str + '_').scan(/../)
# end

# p solution('abc') #== ['ab', 'c_']
# p solution('abcdef') == ['ab', 'cd', 'ef']
# p solution("abcdef") == ["ab", "cd", "ef"]
# p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
# p solution("") == []

=begin
30. Anagram difference
(https://www.codewars.com/kata/5b1b27c8f60e99a467000041)
6 kyu
Given two words, how many letters do you have to remove from them to make
them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters
(usually in a different order).
Do not worry about case. All inputs will be lowercase.

Problem
input: 2 strings
output: integer
rules:
- find the minimum letters to remove to make the 2 arguments an anagram
- anagram have the same letters in the same amount (order may different)
- return 0 if already anagrams
- remove all characters if none of them form an anagram '' == ''

Data Structure
strings, integers, arrays

Algorithm
- change 1 or both strings until they are equal (anagrams)
- convert each string to array of characters
- sort each array

- remove all the common letters
  - then count how many remain

- delete/count every character in the short array then count the remaining in
longer array and add those 2 numbers
- initialize result variable to 0
- iterate through longer array every character
  - if character is in the second arr1 delete it *sub
    - also delete the character in a copy of arr2 *
  - count the remaining letters in arr2 and arr1 copy
=end

# def anagram_difference(w1, w2)
#   w1, w2 = [w1, w2].sort_by { |ele| ele.size }
#   w1 = w1.chars.sort.join
#   w2 = w2.chars.sort.join
#   w2_copy = w2.dup
#   count = 0

#   w2.each_char do |char|
#     count += 1 if w1.sub!(char, '')
#     w2_copy.sub!(char, '')
#     return count if w2_copy == w1
#   end
#   count + w2_copy.size
# end

=begin
Algorithm
find all the count of character of the string
- subtract the matching character counts (find the difference)
- return the sum of the remaining counts
=end

# def anagram_difference(w1, w2)
#   w1, w2 = [w1, w2].sort_by { |ele| ele.size }
#   hash1 = w1.chars.tally
#   hash2 = w2.chars.tally
#   sum = 0
#   hash2.each do |k, v|
#     sum += (v - hash1[k].to_i).abs
#   end
#   hash1.each do |k, v|
#     sum += (v - hash2[k].to_i).abs
#   end
#   sum
# end

=begin
Algorithm
- Find how many letters are left in each word after deleting the common ones
- iterate through one string
- if letter is in both words append to a new shared string ''
- iterate through the shared string and delete those characters from
each string
- count the remaining string size of w1 w2
=end

# def anagram_difference(w1, w2)
#   w1.dup.each_char do |char|
#     if w2.include?(char)
#       w2.sub!(char, '')
#       w1.sub!(char, '')
#     end
#   end
#   w1.size + w2.size
# end

# def anagram_difference(w1, w2)
#   Hash.new(0).tap do |h|
#     w1.chars.each { |c| h[c] += 1 }
#     w2.chars.each { |c| h[c] -= 1 }
#   end.values.map(&:abs).sum
# end

# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') #== 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') #== 10

=begin
31. Anagram Detection
(https://www.codewars.com/kata/529eef7a9194e0cbc1000255)
7 kyu
An anagram is the result of rearranging the letters of a word to produce a
new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams
of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"

"Buckethead" is an anagram of "DeathCubeK"

input: 2 str
otuput: boolean
rules:
- return true if anagram
- false
- anagrams are case insensitive

Data structure
strings, arrays, boolean

Algorithm
- make characters lowecase
- convert each to array of character and sort
- see if they match return true
=end

# def is_anagram(test, original)
#   test.downcase.chars.sort == original.downcase.chars.sort
# end

# p is_anagram('Creative', 'Reactive') #== true
# p is_anagram("foefet", "toffee") == true
# p is_anagram("Buckethead", "DeathCubeK") == true
# p is_anagram("Twoo", "WooT") == true
# p is_anagram("dumble", "bumble") == false
# p is_anagram("ound", "round") == false
# p is_anagram("apple", "pale") == false

=begin
32. Highest Scoring Word
(https://www.codewars.com/kata/57eb8fcdf670e99d9b000272)
6 kyu
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet:
a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the
original string.

All letters will be lowercase and all inputs will be valid.

Problem
input: string
output: string (word)
rules:
- find the highest scoring word
- score is based on the sum of the letters value
  - letters are value 1..26 based on there alphabetical position
- if 2 words are the same score return the earliest
- all letters are lowercase

- each word split with spaces?
Data structure
strings, arrays

Algorithm
- split each string into an array of words
- initialize variable highest to empty string ''
- iterate through each word
  - find the total of each word
    - .ord - 96
  - if current word total > current highest
    - highest = current word
- return highest


=end

# def high(str)
#   highest = ''
#   str.split.each do |word|
#     highest << word if highest.empty?
#     if find_highest(word) > find_highest(highest)
#       highest = word
#     end
#   end
#   highest
# end

# def find_highest(str)
#   total = 0
#   str.chars.each { |char| total += char.ord - 96 }
#   total
# end

# def high(str)
#   highest = ''
#   str.split.each { |word| highest = word if score(word) > score(highest) }
#   highest
# end

# def score(str)
#   p str.chars.reduce(0) { |sum, char| sum + char.ord - 96 }
# end

# p high('man i need a taxi up to ubud') #== 'taxi'
# p high('what time are we climbing up the volcano') == 'volcano'
# p high('take me to semynak') == 'semynak'
# p high('aaa b') == 'aaa'

=begin
33. Replace With Alphabet Position
(https://www.codewars.com/kata/546f922b54af40e1e90001da)
6 kyu
In this kata you are required to, given a string, replace every letter with
its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15
3 12 15 3 11" (as a string)

input: string
output: string of integers
rules:
- replace every letter with its position in the alphabe a - 1 b - 2
- case insensitive A or a = 1
- 

Data 
strings, arrays

Algorithm
- filter out non letter characters
- split the string into an array of characters
- iterate through the array
  - change every character to its corresponding number (new array)
- return the array joined with ' ' as a string
=end

# def alphabet_position(text)
#   text.downcase.delete('^a-z').chars.map do |char|
#     char.ord - 96
#   end.join(' ')
# end

# def alphabet_position(text)
#   text.downcase.scan(/[a-z]/).map { |char| char.ord - 96 }.join(' ')
# end

# p alphabet_position("The sunset sets at twelve o' clock.") #== "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# p alphabet_position("-.-'") #== ""

=begin
34. Sherlock on pockets
(https://www.codewars.com/kata/53bb1201392478fefc000746)
6 kyu
Sherlock has to find suspects on his latest case. He will use your method,
dear Watson. Suspect in this case is a person which has something not allowed
in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value
is one or few things represented by an array of numbers (can be nil or empty
array if empty), example:

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

Write a method which helps Sherlock to find suspects. If no suspect is found
or there are no pockets (pockets == nil), the method should return nil.

Problem
input: 2 arguments hash, array
output: array of symbols (suspects)
rules:
- return an array of the keys(suspects/symbols) from the hash who's values
contain at least 1 elements of the argument array
- return nil if no suspect (or pockets)

Data structure
hash, arrays, symbols, integers

Algorithm
- nested iteration
- initialize result variable to an empty array
- iterate through hash
  - iterateing thorugh the array (2nd arrgument)
- if value of the current hash element matches any array value
  - add symbol to result array
- return result array or if array empty return nil instead
=end

# def find_suspects(pockets, allowed_items)
#   result = []
#   pockets.each do |suspect, arr|
#     next arr == []
#     result << suspect if !(arr - allowed_items).empty?
#     end
#   end
#   result unless result == []
# end

# def find_suspects(pockets, allowed_items)
#   result = []
#   pockets.each do |suspect, arr|
#     next if arr == nil
#     result << suspect unless (arr - allowed_items).empty?
#   end
#   result unless result.empty?
# end

# def find_suspects(pockets, allowed_items)
#   result = []
#   pockets.each do |suspect, arr|
#     result << suspect unless (arr - allowed_items).empty?
#   end
#   result unless result.empty?
# end

# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# } 

# p find_suspects(pockets, [1, 2]) #== [:tom, :jane]
# p find_suspects(pockets, [1, 7, 5, 2]) #== nil
# p find_suspects(pockets, []) #== [:bob, :tom, :jane]
# p find_suspects(pockets, [7]) #== [:bob, :tom]

=begin
35. Mexican Wave
(https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/ruby)
6 kyu

In this 
simple Kata your task is to create a function that turns a string into
a Mexican Wave. You will be passed a string and you must return that string
in an array where an uppercase letter is a person standing up.

Rules
1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it
was an empty seat.

Problem
input: str
output: array
rules:
- string will be lowercase or empty
- skip whitespaces and capitalize the next letter
- return array will have the same number of elements as letter characters 
(not counting spaces)
- next letter is capitalized if next to space

Data structure
strings, array

Algorithm
- initialize result array to an empty array
- iterate through each character of the string argument with index
  - populate the array with the appropriate word
  - skip over white spaces
=end

# def wave(str)
#   result = []
#   str.chars.each_with_index do |char, index|
#     if char != ' '
#       s = ''
#       str.chars.each_with_index { |c, i| index == i ? s << c.upcase : s << c }
#       result << s
#     end
#   end
#   result
# end

# def wave s
#   s.size.times.map{|i| s[0...i] + s[i].upcase + s[i+1..-1]} - [s]
# end

# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
# p wave("two words") #== ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

=begin
36. Delete a Digit
(https://www.codewars.com/kata/5894318275f2c75695000146/train/ruby)
6 kyu
Task
Given an integer n, find the maximal number you can obtain by deleting
exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

Problem
rules:
- delete a single digit to create the highest number

Data structures
integers, strings

Algorithm
- find the lowest number
- delete that number
- return number

- convert n to a string
- find every substring of size 3 - combinations
  - use nested iterate of the index
  - 
- pick out the max substring

- count from the lowest substring converted to an integer
- to the max substring
- pick out the highest value that includes all the digits required

- 1221
=end

# def delete_digit(n)
#   n.to_s.chars.combination(n.to_s.size - 1).max_by { |arr| arr.join.to_i }.join.to_i
# end

# def delete_digit(n)
#   n.to_s.chars.combination(n.to_s.size - 1).max.join.to_i
# end

# def delete_digit(num)
#   digits = num.to_s.chars
#   (0...digits.size).map { |idx| (digits[0...idx] + digits[idx + 1..-1]) }.join.to_i }.max
# end

# def delete_digit(n)
#   digits = n.to_s.chars
#   (0...digits.size).map { |index| digits[0...index] + digits[index + 1..-1] }.max.join.to_i
# end

# [] [5, 2], [1] [2], [1, 5] []
# p delete_digit(152) #== 52
# p delete_digit(1001) #== 101
# p delete_digit(10) #== 1

=begin
37. Multiples of 3 or 5
(https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby)
6 kyu
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or
5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

Problem
input: integer
output: integer (sum of multiples)
rules:
- return the sum of the multiples of 3  or 5 BELOW the argument given
- if number is multiple of both only count once
- positive numbers only

Data
integer

Algorithm
- initialize sum variable to 0
- iterate through 0 upto number - 1
  - if it is a multiple of 3 or 5
    - add to sum
- return sum

=end

# def solution(number)
#   (0...number).reduce(0) { |sum, n| n % 3 == 0 || n % 5 == 0 ? sum + n : sum }
# end

# p solution(10) == 23
# p solution(20) == 78
# p solution(200) == 9168

=begin
38. String transformer
(https://www.codewars.com/kata/5878520d52628a092f0002d0/train/ruby)
6 kyu
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to
lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.

Problem
input: string
output: new string
rules:
- case is swapped for every character
- words are reversed 
- handle multiple spaces/leading/traililng spaces
- strings only contain letters and spaces

' example string ' => ' STRING EXAMPLE '

Data structure
strings, array

Algorithm
- reverse the order of the words
- swap the cases of all letters
- preservere the spaces between words

- how do do rearrange the words and keep the spaces
- count the spaces before or after each word

- reverse the array of words
-initalize result string to empty string ''
- initialize previous character to ' '
- iterate through each character of the string
  - if value is not a space || if the previous character was not a letter
  - append the first word of words array destructively * shift
  - 

- if preserving spaces is needed
- initialize a result variable to empty string ''
- iterate the string

- without preserving spaces
- initialize variable words to an array: split the string into an array of words
- reverse the array
- iterate thorugh each word
  - swap the case of each word
- join the words with spaces


=end

# def string_transformer(str)
#   words = str.split.reverse.map(&:swapcase)
#   result = ''
#   previous = ' '
#   str.each_char do |char|
#     p char
#     if char != ' ' && ![*'a'..'z'].include?(previous.downcase)
#       result << words.shift
#     end
#     result << char if char == ' '
#     previous = char
#   end
#   result
# end

# find words split at letter characters include spaces
# ' Example   string  string string' ['']
# def string_transformer(str)
# end

# def string_transformer(str)
#   str.split.map(&:swapcase).reverse.zip(str.split(/[A-Za-z]+/).reverse).join
# end

# def string_transformer(str)
#   str.split(/[A-Za-z]+/).reverse.zip(str.split.map(&:swapcase).reverse).join
# end

# def string_transformer(str)
#   str.split(/\b/).reverse.map(&:swapcase).join
# end

# def string_transformer(str)
#   words = str.split.reverse
#   words.each { |word| word.swapcase! }.join(' ')
# end

# p string_transformer(' Example  string ') #== 'STRING eXAMPLE'
# p string_transformer(' Example   string  string string') #== 'STRING  eXAMPLE'

=begin
39. Largest product in a series
(https://www.codewars.com/kata/529872bdd0f550a06b00026e/train/ruby)
6 kyu
Complete the greatestProduct method so that it'll find the greatest product
of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

Problem
input: string (more than 5 digits)
output: integer
rules:
- return the greatest product for 5 consecutive digits

Data structure
strings, integers, arrays

Algorithm
- find every 5 digit combintation
- find the product of each
- return the max product
=end

# def greatest_product(n)
#   result = []
#   n.chars.each_cons(5) { |n| result << n }
#   result.map { |sub_arr| sub_arr.map(&:to_i).reduce(:*) }.max
# end
# p greatest_product("123834539327238239583") #== 3240
# p greatest_product("395831238345393272382") == 3240
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("02494037820244202221011110532909999") == 0

=begin
40. Duplicate Encoder
(https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby)
6 kyu
The goal of this exercise is to convert a string to a new string where
each character in the new string is "(" if that character appears only once
in the original string, or ")" if that character appears more than once in
the original string. Ignore capitalization when determining if a character is
a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

Problem
input: string
output: string
rules:
- replace character with '(' if character appears only once
- replace character with ')' if character appears more than once
- ignore capitalization 'A' == 'a' when counting

data structure
strings, arrays

Algorithm
- convert the string to downcase letters
- initialize result to an empty string ''
- iterate through each character of the string
  - if the character count of that letter is < 2
    - result << replace (
  - else 
    - result <<  )
=end

# def duplicate_encode(str)
#   result = ''
#   str.downcase.each_char do |char|
#     str.downcase.count(char) < 2 ? result << '(' : result << ')'
#   end
#   result
# end

# p duplicate_encode("din") == "((("
# p duplicate_encode("recede") == "()()()"
# p duplicate_encode("Success") == ")())())"
# p duplicate_encode("(( @") == "))(("

=begin
41. Backspaces in string
(https://www.codewars.com/kata/5727bb0fe81185ae62000ae3/train/ruby)
6 kyu
Assume "#" is like a backspace in string. This means that string "a#bc#d"
actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

Problem
input: string
output: string (filtered)
rules:
- # symbol negates the previous character that is not a hash #
- all hashes return an empty string

Data structure
strings, arrays

Algorithm
- count the times # occurs in string
  - if # count * 2 >= str size return ''
- split the string into an array characters
- create a duplicate string
- iterate through each character of the string with index
  - if current character #
  - save the index to an array

- reverse the string
- initialize string
- initialize count
- iterate through the reversed string
- if there is hash increase counter by 1
  - next
- elsif counter > 0 && current character not == '#'
  - counter -= 1
  - next
- else
  append current character to result string
=end

# def clean_string(str)
#   result = ''
#   count = 0
#   str.reverse.each_char do |char|
#     if char == '#'
#       count += 1
#     elsif count > 0 && char != '#'
#       count -= 1
#     else
#       result << char
#     end
#   end
#   result.reverse
# end

# def clean_string(string)
#   string.chars.reduce('') { |result, c| c == '#' ? result.chop : result << c }
# end

# p clean_string('abc#d##c') #== "ac"
# p clean_string('abc####d##c#') == ""

=begin
42. Sort Arrays 
(Ignoring Casehttps://www.codewars.com/kata/51f41fe7e8f176e70d0002b9/train/ruby)
(https://www.codewars.com/kata/51f41fe7e8f176e70d0002b9/train/ruby)
6 kyu
Sort the given strings in alphabetical order, case insensitive. For example:

["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]

=end

# p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
# p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
# p sortme(["CodeWars"]) == ["CodeWars"]

=begin
43. Transform To Prime
(https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/ruby)
6 kyu
Task :
Given a List [] of n integers , find the minimum number to be inserted in
a list, so that the sum of all elements of the list should equal the closest
prime number .

Notes
List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number
to be inserted to transform the sum to prime number is (1) , which will make
*the sum of the List** equal the closest prime number (7)* .
2-  minimumNumber ({2,12,8,4,6}) ==> return (b, 
5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to
be inserted to transform the sum to prime number is (5) , which will make
*the sum of the List** equal the closest prime number (37)* .
3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number
to be inserted to transform the sum to prime number is (2) , which will make
*the sum of the List** equal the closest prime number (191)* .

Problem
input: array
output: integer
rules:
- return an integer that makes the sum of the array argument equal the next
highest prime number
- array  size at least 2
- all array integers in list > 0
- equal closest (next highest) prime number
- can use 0

Data structure
array, integer, 

Algorithm
- find the sum of array
- create a method to find Prime (or use require prime)
- if sum is prime return zero
- find next prime after sum
- return value : subtract next prime - sum
=end

# require 'prime'

# def minimum_number(numbers)
#   (numbers.sum..Float::INFINITY).each { |n| return (numbers.sum - n).abs if Prime.prime?(n) }
# end

# def minimum_number(numbers)
#   Prime.find { |prime| prime >= numbers.sum } - numbers.sum
# end

# def minimum_number(numbers)
#   numbers.sum.step { |n| return n - numbers.sum if n.prime? }
# end

# p minimum_number([3,1,2]) # == 1
# p minimum_number([5,2]) == 0
# p minimum_number([1,1,1]) == 0
# p minimum_number([2,12,8,4,6]) == 5
# p minimum_number([50,39,49,6,17,28]) == 2

=begin
Write a method to find prime numbers without the built in Prime class
return true if prime else return false

Algorithm
- iterate through num -1 down to 2 - parameter divisor
  - num % divisor == 0
=end

# def prime?(num)
#   return false if num <= 0
#   (num - 1).downto(2).all? { |divisor| num % divisor != 0 }
# end

=begin
44. Counting Duplicates 
(https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby)
6 kyu
Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive
alphabetic characters and numeric digits that occur more than once in the
input string. The input string can be assumed to contain only alphabets
(both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

Problem
input: string
output: integer
rules:
- return the count of duplicate characters (letters/numbers)
- letters are case-insenitive 'A' == 'a'
- assume string will contain only numbers and letters

Data structure
strings, integers, arrays

Algorithm
- downcase the string
- find the count of every character
  - iterate through the string
- count the number of characters whose count is greater than 1
=end

# def duplicate_count(str)
#   str.downcase.chars.tally.values.count { |n| n > 1 }
# end

# def duplicate_count(str)
#   str.downcase.chars.tally.count { |k, v| v > 1 }
# end

# def duplicate_count(str)
#   ('a'..'z').count { |c| str.downcase.count(c) > 1 }
# end

# p duplicate_count("") #== 0
# p duplicate_count("abcde") #== 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2

=begin
45. Alphabetized
(https://www.codewars.com/kata/5970df092ef474680a0000c9/train/ruby)
6 kyu
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a
new string in "case-insensitively-alphabetical-order-of-appearance" order.
Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing
the english alphabet letters.

Example:

alphabetized("The Holy Bible") # "BbeehHilloTy"

Problem
input: string
output: new string (filtered)
rules:
- return a new string in specified order
  - spaces and punctuation is removed
  - words contain only letters
- sort (case insensitively) alphabetically then in order of appearance

Algorithm
- filter out non letter characters
- sort this by the lowercase version string and remove spaces
=end

# def alphabetized(s)
#   s.scan(/[a-z]/i).sort_by { |char| char.downcase }.join
# end

# def alphabetized(s)
#   s.scan(/[a-z]/i).sort_by(&:downcase).join
# end

# p alphabetized("") == ""
# p alphabetized(" ") == ""
# p alphabetized(" a") == "a"
# p alphabetized("a ") == "a"
# p alphabetized(" a ") == "a"
# p alphabetized("A b B a") == "AabB"
# p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"

=begin
46. Sum of Digits / Digital Root
(https://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby)
6 kyu
In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n,
take the sum of the digits of n. If that value has more than one digit,
continue reducing in this way until a single-digit number is produced. This
is only applicable to the natural numbers.

Here's how it works:
digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

Problem
input: integer
output: integer (digitial root)
rules:
- use a recursive sum of all the digits in a number
- keep finding this sum until a signle digit number is found
- input will be non -negative

Data structure
integer, arrays

Algorithm
- convert each single digit of the num into an array of digits *digits
- find the sum of the digits
- if sum is 1 digit return sum
- else continue loop
=end

# def digital_root(n)
#   loop do
#     return n.digits.sum if n.digits.size == 1
#     n = n.digits.sum
#   end
# end

# def digital_root(n)
#   n = n.digits.sum until n.digits.size == 1
#   n
# end

# def digital_root(n)
#   n < 10 ? n : digital_root(n.digits.sum)
# end

# p digital_root(16) #== 7 
# p digital_root(456) #== 6 

=begin
47. Array.diff
(https://www.codewars.com/kata/523f5d21c841566fde000009/train/ruby)
6 kyu
Your goal in this kata is to implement a difference function, which subtracts
one list from another and returns the result.

It should remove all values from list a, which are present in list b.

array_diff([1,2],[1]) == [2]
If a value is present in b, all of its occurrences must be removed from the
other:

array_diff([1,2],[1]) == [2]

Algorithm
- subtract arr2 from arr1
=end

# def array_diff(a, b)
#   a - b
# end

# p array_diff([1,2], [1]) == [2]
# p array_diff([1,2,2], [1]) == [2,2]
# p array_diff([1,2,2], [2]) == [1]
# p array_diff([1,2,2], []) == [1,2,2]
# p array_diff([], [1,2]) == []

=begin
48. Where is my parent!?(cry)
(https://www.codewars.com/kata/58539230879867a8cd00011c/train/ruby )
Where's my parent?
6 kyu
Mothers arranged a dance party for the children in school. At that party,
there are only mothers and their children. All are having great fun on the
dance floor when suddenly all the lights went out. It's a dark night and
no one can see each other. But you were flying nearby and you can see in
the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children,
i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their
children, i.e. "aAbaBb" => "AaaBbb".

Problem
input: string
output: string
rules:
- sort the sort by capital letter followed by its lowercase letters

Algorithm
- downcase all letters
- Sort the letters
- iterate through each letter
- capitalize the first occurence of new letter
  - if the previous downcase letter != current letter
    - letter upcase 
  - assign previous variable to new character
=end

# def find_children(dancing_brigade)
#   dancing_brigade.chars.sort_by { |char| [char.downcase, char] }.join
# end
# [["a", "a"], ["b", "b"], ["b", "B"], ["a", "A"]].sort ==
# [["a", "A"], ["a", "a"], ["b", "B"], ["b", "b"]]

# def find_children(dancing_brigade)
#   previous = ''
#   dancing_brigade.downcase.chars.sort.each do |char|
#     char.upcase! if previous.downcase != char
#     previous = char
#   end.join
# end

# def find_children(dancing_brigade)
#   dancing_brigade.chars.group_by(&:downcase).values.map(&:sort).join
# end

# def find_children(dancing_brigade)
#   dancing_brigade.split("").sort .sort_by{|e| e.downcase}.join("")
# end

# p find_children("abBA") #== "AaBb"
# p find_children("AaaaaZazzz") #== "AaaaaaZzzz"
# p find_children("CbcBcbaA") == "AaBbbCcc"
# p find_children("xXfuUuuF") == "FfUuuuXx"
# p find_children("") == ""

=begin
49. Playing with digits
(https://www.codewars.com/kata/5552101f47fc5178b1000050/train/ruby)
6 kyu
Some numbers have funny properties. For example:

89 --> 8¹ + 9² = 89 * 1

695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2

46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

Given a positive integer n written as abcd... (a, b, c, d... being digits)
and a positive integer p

we want to find a positive integer k, if it exists, such as the sum of the
digits of n taken to the successive powers of p is equal to k * n.
In other words:

Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) +
d ^ (p+3) + ...) = n * k

If it is the case we will return k, if not return -1.

Note: n and p will always be given as strictly positive integers.

dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals
  92 * k
dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688
  = 46288 * 51

Problem
input: 2 integers n, p
output: integer (-1 if not found)
rules:
- return k (sum of digits to the p power, p + 1 etc) = k * n(first argument)
- if k does not return -1

Data structures
integers, arrays

Algorithm
- find the sum of all digits to p or p + 1, 2... power
- sum / n if sum % n == 0 if sum divides evenly with no remainder return k
- else return -1
=end

# def dig_pow(n, p)
#   index = -1
#   sum = 
#     n.digits.reverse.reduce(0) do |sum, digit|
#       sum + digit**(p + index += 1 )
#     end
#   sum % n == 0 ? sum / n : -1
# end

# def dig_pow(n, p)
#   sum = 0
#   n.digits.reverse.each_with_index do |digit, index|
#     sum += digit**(p + index)
#   end
#   sum % n == 0 ? sum / n : -1
# end

# def dig_pow(n, p)
#   sum = n.to_s.chars.map.with_index { |c, i| c.to_i**(p + i) }.sum
#   sum % n == 0 ? sum / n : -1
# end

# p dig_pow(89, 1) #== 1
# p dig_pow(92, 1) #== -1
# p dig_pow(46288, 3) #== 51
# p dig_pow(695, 2) # == 2

=begin
50. Equal Sides Of An Array
(https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby)
Equal sides of an array
6 kyu
You are going to be given an array of integers. Your job is to take that
array and find an index N where the sum of the integers to the left of N
is equal to the sum of the integers to the right of N. If there is no index
that would make this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}: Your function will return
the index 3, because at the 3rd position of the array, the sum of left side
of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1})
both equal 6.

Let's look at another one.
You are given the array {1,100,50,-51,1,1}: Your function will return the
index 1, because at the 1st position of the array, the sum of left side of
the index ({1}) and the sum of the right side of the index ({50,-51,1,1})
both equal 1.

Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this
problem)
Index 0 is the place where the left side and right side are equal.

Note: Please remember that in most programming/scripting languages the index
of an array starts at 0.

Input:
An integer array of length 0 < arr < 1000. The numbers in the array can be
any integer positive or negative.

Output:
The lowest index N where the side to the left of N is equal to the side to
the right of N. If you do not find an index that fits these rules, then you
will return -1.

Note:
If you are given an array with multiple answers, return the lowest correct
index.

Problem
input: array
output: integer
rules:
- find the index where the left digits sum == right digits sum
- index is not included in the sum
- array can have neg or pos values
- return -1 if no matching index is found

Data
integers ,arrays

Algorithm
- find the sums on the left and right of each index
- store the values as sub arrays of those index values
[1, 2, 3] -- 
index 0 [], [2, 3]
index 1 [1], [3]
index 2 [1, 2][]
return sum if sum sub-arr1 == sum sub - arr2

- iterate through indexes 0 upto array size - 1
  - find the sub-arrays
  - arr[0...index] arr[index + 1..-1] 
  - compare the sums of subarrs
  - return sum if sums of sub-arrays are equal
- else return -1
=end

# def find_even_index(arr)
#   (0..arr.size - 1).each do |index|
#     return index if arr[0...index].sum == arr[index + 1..-1].sum
#   end
#   -1 
# end

# p find_even_index([1,2,3,4,3,2,1]) #== 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index(Array(1..100)) == -1
# p find_even_index([0,0,0,0,0]) == 0
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
# p find_even_index(Array(-100..-1)) == -1

=begin
51. Reverse or rotate?
(https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991)
6 kyu
Reverse or rotate?
The input is a string str of digits. Cut the string into chunks (a chunk here
is a substring of the initial string) of size sz (ignore the last chunk if
its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits
is divisible by 2, reverse that chunk; otherwise rotate it to the left by one
position. Put together these modified chunks and return the result as a string.

If

sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk
of size sz hence return "".

Examples:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> "" 
revrot("563000655734469485", 4) --> "0365065073456944"

Problem
input: string, integer (size of chunk)
output: string
rules:
- return a string of chunks
- split the chunks over the size (second argument) until not able to return
that size
- if the sum of the cubes (n**3) of each digit are divisible by 2 (even?)
  - reverse chunk order
- else rotate it to the left 1 position (last digit moved to front)
- concatenating all chunks

Data Structure
integers, strings, arrays

Algorithm
- convert the array into the sub_string that are sz(size)
  - iterate through index 0 upto str.size - sz
  - append each string chunk
  - ignore last substring if less the sz
- alter the substring based on requirement
  - if sum of the cubers is even
    - reverse
  - else
    - remove the last string element and append it to the begining of the string
- join all the sub_strings

"1234", 2  
index 0 "12"
index 2 "34"
stop if index is past slice size [-2] 
=end

# def revrot(str, sz)
#   return "" if sz == 0 || sz > str.size
#   chunks = []
#   0.upto(str.size - sz) do |index|
#     chunks << str[index, sz] if index == 0 || index % sz == 0
#   end
#   chunks.map do |chunk|
#     chunk_num = chunk.chars.map(&:to_i)
#     chunk_num.map { |n| n** 3 }.sum.even? ? chunk_num.reverse : rotate_left(chunk_num)
#   end.join
# end

# def rotate_left(arr)
#   arr.append(arr.shift)
# end

# p revrot("1234", 0) == ""
# p revrot("", 0) == ""
# p revrot("1234", 5) == ""
# p revrot("733049910872815764", 5) #== "330479108928157"
# p revrot("123456987654", 6) #== "234561876549"
# p revrot("123456987653", 6) == "234561356789"
# p revrot("66443875", 4) == "44668753"
# p revrot("66443875", 8) == "64438756"
# p revrot("664438769", 8) == "67834466"
# p revrot("123456779", 8) == "23456771"
# p revrot("", 8) == ""
# p revrot("123456779", 0) == ""
# p revrot("563000655734469485", 4) == "0365065073456944"

=begin
52. Decipher this!    
https://www.codewars.com/kata/581e014b55f2c52bb00000f8
Decipher this!
6 kyu
You are given a secret message you need to decipher. Here are the things
you need to know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special charact,eers used, only letters and spaces

Examples

decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'

Problem
input: string
output: string
rules:
- return the modified new string
- 2nd and last letter are switched
- first letter replaced by ordinal *ord
- no special characters only letters and spaces
- words are seperated by spaces

Data structures
strings, arrays

Algorithm
- Split the words into an array
- iterate through each word
  - change/mutate the first characters(ord) to its letter
    - grab all the numbers at the begining of the string
    - iterate through each character 
      - concat those characters to a new string
      - break if the character is not number 0 - 9
    - convert those to a letter
  - switch the 2nd and last character
- rejoin the words in the array into a string

=end

# def decipher_this(string)
#   string.split.map do |word|
#     lead_str = find_leading_num(word)
#     word[0, lead_str.size] = lead_str.to_i.chr
#     if word[1] != nil && word[-1] != nil
#       word[1], word[-1] = word[-1], word[1]
#     end
#     word
#   end.join(' ')
# end

# def find_leading_num(word)
#   result = ''
#   word.each_char { |char| result << char if ('0'..'9').include?(char) }
#   result
# end

# Refactored
# def decipher_this(string)
#   string.split.map do |word|
#     lead_num_str = leading_num_str(word)
#     word[0, lead_num_str.size] = lead_num_str.to_i.chr
#     word[1], word[-1] = word[-1], word[1] if word[1] != nil
#     word
#   end.join(' ')
# end

# def leading_num_str(word)
#   result = ''
#   word.each_char { |char| result << char if ('0'..'9').include?(char) }
#   result
# end

# def leading_num_str(word)
#   word.chars.select { |char| ('0'..'9').include?(char) }.join
# end

# p leading_num_str('234afshd sfdj 0')

# Alternate
# def decipher_this(string)
#   string =  string.split
#   string.map! do |word|
#     numeric = word.scan(/[0-9]/).join.to_i
#     numeric.chr + word.delete('0-9')
#   end
 
#   string.each do |word|
#     word[1], word[-1] = word[-1], word[1] if word.size > 1
#   end
#   string.join(' ')
# end

# p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
# p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
# p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

=begin
52. Bouncing Balls
(https://www.codewars.com/kata/5544c7a5cb454edb3c000047)
6 kyu
A child is playing with a ball on the nth floor of a tall building.
The height of this floor, h, is known.

He drops the ball out of the window. The ball bounces (for example), to
two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window
(including when it's falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer,
otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly
greater than the window parameter.

Example:
- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1 
(Condition 2) not fulfilled).

Problem
input: 3 parameters/arguments, floats or integers
output: integer 
rules:
- return the number of visible bounces (integer) or -1 if requirements not met/seen
- Float parameter "h" in meters must be greater than 0
- Float parameter "bounce" must be greater than 0 and less than 1
- Float parameter "window" must be less than h.
- bounce represents the fraction of its height
- ball can only seen if height is > window parameter
- falling and bouncing counts

Data structure
integers, floats, array

Algorithm
- map to an array each bounce height of the ball until it is 0 OR
 ( < window height)
- return -1 if the height is not met
- create a loop
- increment a counter + 1 each time the height is met
- return the counter
=end

# def bouncingBall(h, bounce, window)
#   return -1 if !(h > 0) || !(bounce > 0) || !(bounce < 1) || !(window < h)
#   heights = []
#   loop do
#     heights << h if h > window
#     h *= bounce
#     break if h <= window
#     heights << h
#   end
#   heights.size
# end

# def bouncingBall(h, bounce, window)
#   return -1 if !(h > 0) || !(bounce > 0) || !(bounce < 1) || !(window < h)
#   heights = []
#   loop do
#     heights << h if h > window
#     h *= bounce
#     break if h <= window
#     heights << h
#   end
#   heights.size
# end

# def bouncingBall(h, bounce, window)
#   return -1 if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h
#   heights = []
#   loop do
#     heights << h if h > window
#     h *= bounce
#     break if h <= window
#     heights << h
#   end
#   heights.size
# end

# p bouncingBall(3, 0.66, 1.5) #== 3
# p bouncingBall(30, 0.66, 1.5) == 15
# p bouncingBall(30, 0.75, 1.5) == 21
# p bouncingBall(30, 0.4, 10) == 3
# p bouncingBall(40, 1, 10) == -1
# p bouncingBall(-5, 0.66, 1.5) == -1
# p bouncingBall(1, 0.66, 0.66) == 1
# p bouncingBall(1, 0.66, 1) == -1

=begin
54. WeIrD StRiNg CaSe
(https://www.codewars.com/kata/52b757663a95b11b3d00062d) 
6 kyu

Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and
returns the same string with all even indexed characters in each word upper
cased, and all odd indexed characters in each word lower cased. The indexing
just explained is zero based, so the zero-ith index is even, therefore that
character should be upper cased.

The passed in string will only consist of alphabetical characters and
spaces(' '). Spaces will only be present if there are multiple words. Words
will be separated by a single space(' ').

Algorithm
- split the string into words as an array
- iterate through the array
  - each word with index
    - char index is even uppercase
    - if index is odd lowercase
- return the string
=end

# def weirdcase(string)
#   string.split.map do |word|
#     word.chars.map.with_index do |char, index| 
#       index.odd? ? char.downcase : char.upcase
#     end.join
#   end.join(' ')
# end

# def weirdcase(string)
#   upcase_char = true
#   string.downcase.chars
#   .map do |c|
#     if c == ' '
#       upcase_char = true
#       c
#     elsif upcase_char
#       upcase_char = !upcase_char
#       c.upcase
#     else 
#       !upcase_char
#       c
#     end
#   end
#   .join
# end

# def weirdcase(string)
#   string.gsub(/\w{1,2}/, &:capitalize)
# end

# def weirdcase string
#   j = 0
#   for i in 0...string.length
#     j = -1 if string[i] == ' '
#     j % 2 == 0 ? string[i] = string[i].upcase : string[i] = string[i].downcase
#     j += 1  
#   end
#   string
# end

# p weirdcase( "String" ) #== "StRiNg"
# p weirdcase( "Weird string case" ) #== "WeIrD StRiNg CaSe"

=begin
55. Are they the "same"?
(https://www.codewars.com/kata/550498447451fbbd7600041c)
6 kyu
Given two arrays a and b write a function comp(a, b) that checks whether the
two arrays have the "same" elements, with the same multiplicities. "Same"
means, here, that the elements in b are the elements in a squared, regardless
of the order.

Examples
Valid arrays
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true because in b 121 is the square of 11, 14641 is
the square of 121, 20736 the square of 144, 361 the square of 19, 25921
the square of 161, and so on. It gets obvious if we write b's elements in
terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
Invalid arrays
If we change the first number to something else, comp may not return true
anymore:

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 36100 is not the square of any number of
a.

Remarks
a or b might be [] (all languages except R, Shell).
a or b might be nil or null or None or nothing (except in Haskell, Elixir,
C++, Rust, R, Shell, PureScript).
If a or b are nil (or null or None), the problem doesn't make sense so return
false.

Note for C
The two arrays have the same size (> 0) given as parameter in function comp.

Problem
input: 2 arrays as arguments array1, array2
output: boolean
rules:
- return true if array2 contrains the squares of all array1 elements
- nil or empty arrays can be used as arguments - return false
- arrays will not be in order necessarily

Data Structures
arrays, integers, booleans

Algorithm
- return false if either argument nil or []
- compare if all integers in array1 are equal to its square in array2 sorted
- find the squares of all array1 elements - create a new array *map
- squares array1 == array2 

=end

# def comp(array1, array2)
#   return false if array1 == nil || array2 == nil
#   array1.map { |n| n**2 }.sort == array2.sort
# end

# def comp(a, b)
#   [a, b].none?(&:nil?) && a.map(&:abs2).sort == b.sort
# end

# p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) #== true
# p comp([121, 144, 19, 161, 19, 144, 19, 11] , [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false
# p comp(nil, [1, 2, 3]) == false
# p comp([1, 2], []) == false
# p comp([1, 2], [1, 4, 4]) == false

=begin
56. Grouping and Counting
(https://www.codewars.com/kata/53a452dd0064085711001205)
6 kyu
Your goal is to write the group_and_count method, which should receive an
array as a unique parameter and return a hash. Empty or nil input must return
nil instead of a hash. This hash returned must contain as keys the unique
values of the array, and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}
The following methods were disabled:

Array#count
Array#length

Problem
input: array or nil
output: hash or nil 
rules:
- return a hash with the key
  - uniq elements in array
  - value - count of elements in array
- if the array is empty or nil return nil
- can't use count or length method

Data Structure
arrays, hashes

Algorithm
- return nil if argument is an empty array or nil
- initialize result variable to empty hash {} default to 0 value
- iterate through each element in the array argument
  - if element is included in hash
    - increment the hash value by 1
  - else 
    - increment the value by 1 (or set to 1)
- return result hash
=end

# def group_and_count(input)
#   return nil if input.nil? || input == []
#   result = Hash.new(0)
#   input.each { |n| result[n] += 1 }
#   result
# end

# def group_and_count(input)
#   return nil if input.nil? || input.empty?
#   input.each_with_object(Hash.new(0)){ |k, h| h[k] += 1 }
# end

# p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
# p group_and_count([]) == nil
# p group_and_count(nil) == nil
# p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}

=begin
57. Find the Nexus of the Codewars Universe
(https://www.codewars.com/kata/5453dce502949307cf000bff)
6 kyu
Not to brag, but I recently became the nexus of the Codewars universe!
My honor and my rank were the same number. I cried a little.

Complete the method that takes a hash/object/directory/association list of
users, and find the nexus: the user whose rank is the closest is equal to
his honor. Return the rank of this user. For each user, the key is the rank
and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who
comes closest. If there are several users who come closest, return the one
with the lowest rank (numeric value). The hash will not necessarily contain
consecutive rank numbers; return the best match from the ranks provided.

Example
         rank    honor
users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,    <--- nexus
          23  =>  11,
          30  =>   2 }

Problem
input: hash
output: integer (key - rank)
rules:
- return the rank of the user whos rank and honor are the closest
- if tied then return the higher rank

Data structures
hashes, integer

Algorithm
- find the difference of every key value pair
- return the key which has the lowest difference
- if there is a tie return the lower ranked key

- [[2, 1], [0, 3], [4, 5]].sort[0][1]
=end

# def nexus(users)
#   users.map { |k, v| [(k-v).abs, k] }.sort[0][1]
# end

# def nexus(users)
#   users.min_by{ |rank, honor| [(rank - honor).abs, rank] }[0]
# end

# p nexus({1 => 3, 3 => 3, 5 => 1}) #== 3
# p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) #== 3
# p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) #== 2

=begin
58. Count letters in string
(https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d)
6 kyu
In this kata, you've to count lowercase letters in a given string and return
the letter count in a hash with 'letter' as key and count as 'value'. The
key must be 'symbol' instead of string in Ruby and 'char' instead of string
in Crystal.

Problem
input: string
output: hash
rules:
- return a hash with the counts of the lowercase letters as symbols

data structure
strings, hash

Algorithm
- initiliaze result variable to an empty hash with a default value of 0
- iterate through each character of the string
  - covert character to a symbol as the key and increment count by 1
- return the result hash
=end

# def letter_count(str)
#   result = Hash.new(0)
#   str.each_char { |char| result[char.to_sym] += 1 }
#   result
# end

# def letter_count(str)
#   str.chars.each_with_object(Hash.new(0)) { |c, h| h[c.to_sym] += 1 }
# end

# def letter_count(str)
#   str.chars.uniq.map { |letter| [letter.to_sym, str.count(letter)] }.to_h
# end

# p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

=begin
59. Triple trouble
(https://www.codewars.com/kata/55d5434f269c0c3f1b000058)
6 kyu
Write a function

triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight
triple of a number at any place in num1 and also a straight double of the
same number in num2.

If this isn't the case, return 0

Examples
triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s

triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2

Problem
input: 2 integers
output: inger 0 or 1
rules:
- return 1 if first number has 3 digits in a row and second number has 2 of
that same digit in a row
- return 0

Data structure
integers, array

Algorithm
- array 1 has 3 digits in a row
- create an array to store those digits
  - if number_count return empty array return 1
  - else check array2 for number count
    - if array return empty
      - return 0 
      - else return 1
- if array 1 matches the conditions
- if array 2 also matches the condition return 1
  - check if there are 2 occurances of those digits from array 1
- else return 0


number_count(number, digit_arr, count)
# return array of number - true if number occurs count times
- initialize result variable to an empty array []
- iterate through digits arr
  - count how many times digit occurs in number as string
  - if the current digit occurs in number count times
    - append current digit to result array

=end

# def triple_double(num1, num2)
#   triples = number_count(num1.to_s, [*'0'..'9'], 3)
#   return 0 if triples.empty?
#   doubles = number_count(num2.to_s, triples, 2)
#   doubles.empty? ? 0 : 1
# end

# def number_count(num, digit_arr, count)
#   digit_arr.select { |digit| num.include?(digit * count) }
# end

# p triple_double(12345, 12345) #== 0
# p triple_double(666789, 12345667) #== 1
# p triple_double(10560002, 100) # ==1

=begin
60. Which are in?
(https://www.codewars.com/kata/550554fd08b86f84fe000a58)
6 kyu
Given two arrays of strings a1 and a2 return a sorted array r in
lexicographical order of the strings of a1 which are substrings of strings
of a2.

#Example 1: a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns ["arp", "live", "strong"]

#Example 2: a1 = ["tarp", "mice", "bull"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns []

Notes:
Arrays are written in "general" notation. See "Your Test Cases" for examples
in your language.

In Shell bash a1 and a2 are strings. The return is a string where words are
separated by commas.

Beware: r must be without duplicates.
Don't mutate the inputs.

Problem
input: array1, array2
output: array
rules:
- return an array with the elements of arr1 which are substrings of any arr2
elements
- elements in the returned array are uniq

Data structure
- strings, arrays

Algorithm
- initialize result variable to an empty array
- iterate through each word1 in array one
- iterate through the elements in array2 (word2)
  - word2 includes word1 (sub_string)
  - append the word1 to results array
- return result array with unique characters
=end

# def in_array(array1, array2)
#   result = []
#   array1.each do |word1|
#     array2.each do |word2|
#       result << word1 if word2.include?(word1)
#     end
#   end
#   result.uniq.sort
# end

# def in_array(array1, array2)
#   array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
# end

# def in_array(array1, array2)
#   array1.select do |sub_string|
#      array2.any? do |word|
#        word.include?(sub_string)
#      end
#    end.sort 
#  end 

# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# p in_array(a1, a2) # == ["arp", "live", "strong"]

=begin
61. Format a string of names like 'Bart, Lisa & Maggie'.
(https://www.codewars.com/kata/53368a47e38700bd8300030d2) 
6 kyu
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except
for the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
Note: all the hashes are pre-validated and will only contain A-Z, a-z,
'-' and '.'.

Problem
input: array of hashes or empty array
output: string
rules:
- return a string with the names formated correctly
  - names have , after them
    - last two have &
    - single name has no punctuation
    - empty array returns ''
- hashes are prevalidated and will only contain A-Z a-z - and .

Data structure
hashes, arrays, strings

Algorithm
- return [] if array is empty
- initialize names variable to an array containing all names in argument array 
- if array size is 1 then return array
- if array size is 2 join then with &
- if array size > 2 join with ', ' and last with &
=end

# def list(names)
#   names = names.map { |hash| hash[:name] }
#   result = ''
#   names.each_with_index do |name, index|
#     if index == names.size - 1
#       result << name 
#     elsif index == names.size - 2
#       result << name + ' & '
#     else
#       result << name + ', '
#     end
#   end
#   result
# end

# def list(names)
#   result = ''
#   names.map { |h| h[:name] }.each_with_index do |name, index|
#     case index
#     when names.size - 1 then result << name 
#     when names.size - 2 then result << name + ' & '
#     else                     result << name + ', '
#     end
#   end
#   result
# end

# def list(names)
#   names.map { |h| h[:name] }.map.with_index do |name, index|
#     case index
#     when names.size - 1 then name 
#     when names.size - 2 then name + ' & '
#     else                     name + ', '
#     end
#   end.join
# end

# def list names
#   names = names.map { |name| name[:name] }
#   last_name = names.pop
#   return last_name.to_s if names.empty?
#   "#{names.join(', ')} & #{last_name}"
# end

# def list names
#   names = names.map{ |name_hash| name_hash.fetch(:name) }
#   last_2_name = names.pop(2).join(' & ')
#   names.push(last_2_name)
#   names.join(', ')
# end

# def list names
#   names.map do |hash|
#     hash[:name]
#   end.join(', ').reverse.sub(',', '& ').reverse
# end

# p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
# # 'Bart, Lisa, Maggie, Homer & Marge'
# p list([])
# p list([{name: 'Bart'}])
# p list([{name: 'Bart'},{name: 'Lisa'}])

=begin
62. Find the missing letter
(https://www.codewars.com/kata/5839edaa6754d6fec10000a2)
6 kyu
#Find the missing letter

Write a method that takes an array of consecutive (increasing) letters as
input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter
be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Example:

['a','b','c','d','f'] -> 'e' 
['O','Q','R','S'] -> 'P'

["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"
(Use the English alphabet with 26 letters!)

Problem
input: array
output: string - single letter
rules:
- return the missing letter in an alphabetical sequence
- letters will be all lower or all uppercase
- array will valid length will be at least 2

Data Structure
- arrays, strings

Algorithm
- determine if letters are lower or uppercase
  - iterate over corresponding key 
- compare array to key of letters in the alphabet
  - take a sub-array of the first character index to the end of the key
- subtract argument array from key sub-array -
- then return first key sub-array


- iterate through each character in the key with index
  - compare the current character to argument array at the same index
- start from the first character in the array
- if the next character does not match the next character in the key
- return that character (uppercase or lowercase version)

=end

# def find_missing_letter(arr)
#   key = arr.first == arr.first.downcase ? [*'a'..'z'] : [*'a'..'z'].map(&:upcase)
#   sub_arr = key[key.index(arr.first)..-1]
#   (sub_arr - arr).first
# end

# def find_missing_letter(arr)
#   alphabet = arr[0] == arr[0].downcase ? [*'a'..'z'] : [*'a'..'z'].map(&:upcase)
#   (alphabet[alphabet.index(arr[0])..-1] - arr)[0]
# end

# def find_missing_letter(arr)
#   ([*'A'..'z'][[*'A'..'z'].index(arr[0])..-1] - arr)[0]
# end

# def find_missing_letter(arr)
#   arr.each_with_index { |c, i| return (c.ord + 1).chr unless (c.ord + 1).chr == arr[i + 1] }
# end

# def find_missing_letter(arr)
#   ((arr.first..arr.last).to_a - arr).first
# end

# def find_missing_letter(arr)
#   arr[0...-1].each_with_index { |val, ind| return val.next if val.next != arr[ind+1] }
#   return nil
# end

# p find_missing_letter(["a","b","c","d","f"]) #, "e")
# p find_missing_letter(["O","Q","R","S"]) #, "P")
# p find_missing_letter(["b","d"]) #, "c")
# p find_missing_letter(["a","b","d"]) #, "c")
# p find_missing_letter(["b","d","e"]) #, "c")

=begin
63. Who likes it?
(https://www.codewars.com/kata/5266876b8f4bf2da9b000362)
6 kyu
You probably know the "like" system from Facebook and other pages. People
can "like" blog posts, pictures or other items. We want to create the text
that should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take in input
array, containing the names of people who like an item. It must return the
display text as shown in the examples:

likes [] // must be "no one likes this"
likes ["Peter"] // must be "Peter likes this"
likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

Problem
input: array (may be empty)
output: string
rules:
- return a string that is formated correctly based on the number of elements
in array

Data
array and strings

Algorithm
- find the array size
- if array size is 0
  -format
if array sise is 1
  - format etc.
=end

# def likes(names)
#   case names.size
#   when 0 then "no one likes this"
#   when 1 then "#{names[0]} likes this"
#   when 2 then "#{names[0]} and #{names[1]} like this"
#   when 3 then "#{names[0]}, #{names[1]} and #{names[2]} like this"
#   else        "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
#   end
# end

# p likes([]) #, 'no one likes this')
# p likes(['Peter']) #, 'Peter likes this')
# p likes(['Jacob', 'Alex']) #, 'Jacob and Alex like this')
# p likes(['Max', 'John', 'Mark']) #, 'Max, John and Mark like this')
# p likes(['Alex', 'Jacob', 'Mark', 'Max']) #, 'Alex, Jacob and 2 others like this')

=begin
64. Find The Parity Outlier
(https://www.codewars.com/kata/5526fc09a1bbd946250002dc)
6 kyu
You are given an array (which will have a length of at least 3, but could
be very large) containing integers. The array is either entirely comprised
of odd integers or entirely comprised of even integers except for a single
integer N. Write a method that takes the array as an argument and returns
this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

Problem
input: array
output: integer
- return the outlier element - opposite from the rest odd/even
- array will contain at least 3 elements

Data structures
arrays, integers

Algorithm
- if least 2 characters are either odd or even
  - the outlier will be the opposite
  - can select the opposite
- select odd integers in one array
- select the even integers in the other
  - return the first element of the smaller array
=end

# def find_outlier(integers)
#   even = integers.select(&:even?)
#   odd = integers.select(&:odd?)
#   even.size > odd.size ? odd[0] : even[0]
# end

# def find_outlier(integers)
#   integers.partition(&:odd?).min_by(&:size).first
# end

# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end

# p find_outlier([1, 2, 3]) # == 2
# p find_outlier([0, 1, 2]) # == 1

=begin
65. Is Integer Array?
(https://www.codewars.com/kata/52a112d9488f506ae7000b95)
6 kyu
Write a function with the signature shown below:

def is_int_array(arr)
  true
end

returns true / True if every element in an array is an integer or a float
with no decimals.
returns true / True if array is empty.
returns false / False for every other input.

Problem
input: array, nil, string
output: boolean
rules:
- return true if argument is an array of integers
- return true if argument is an array of floats that end in 0 e.g 1.0
- return true if argument is an empty array
- return false otherwise

data structures
arrays, booleans, nil, integers, floats, string etcs

Algorithm
- if argument is an array
  - check if array elements meet requirements
    - if all elements are integers OR
    - if all elements are floats && floats with no decimals
      - return true
- return false
=end

# def is_int_array(arr)
#   if arr.class == Array
#     if arr.all? { |ele| ele.class == Integer }
#       true
#     elsif arr.all? { |ele| ele.class == Float && ele.to_i == ele }
#       true
#     else
#       false
#     end
#   else
#     false
#   end
# end

# def is_int_array(arr)
#   return false unless arr.class == Array
#   if arr.all? { |ele| ele.class == Integer || ele.class == Float && ele.to_i == ele }
#     true
#   else
#     false
#   end
# end

# def is_int_array(arr)
#   return false unless arr.class == Array
#   bool = 
#     arr.all? do |ele| ele.class == Integer || (ele.class == Float && ele.to_i == ele)
#     end
#   bool ? true : false
# end

# def is_int_array(arr)
#   arr.is_a?(Array) && arr.all? { |x| x.is_a?(Integer) || x.is_a?(Float) && x.to_i == x }
# end

# def is_int_array arr
#   arr.all?{|i| i == i.to_i} rescue false
# end

# p is_int_array([]) # true, "Input: []")
# p is_int_array([1, 2, 3, 4]) # true, "Input: [1, 2, 3, 4]")
# p is_int_array([-11, -12, -13, -14]) # true, "Input: [-11, -12, -13, -14]")
# p is_int_array([1.0, 2.0, 3.0]) # true, "Input: [1.0, 2.0, 3.0]")
# p is_int_array([1, 2, nil])  # false, "Input: [1,2, nil]")
# p is_int_array(nil)  # false, "Input: nil")
# p is_int_array("")  # false, "Input: ''")
# p is_int_array([nil])  # false, "Input: [nil]")
# p is_int_array([1.0, 2.0, 3.0001])  # false, "Input: [1.0, 2.0, 3.0001]")
# p is_int_array(["-1"])  # false, "Input: ['-1']")

=begin
66. Reversing and Combining Text
6 kyu
(https://www.codewars.com/kata/56b861671d36bb0aa8000819/train/ruby)

Your task is to Reverse and Combine Words.

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second,
third with fourth and so on...
  (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result…

Problem
input: string (words seperated by spaces)
output: combined string
rules:
- return the reversed and combined words
- 1 word - return the word
- even number - reverse each word and combine first with second
- reverse all words then combine
- stop if there is only one word

Data structure
arrays and strings

Algorithm
- split the string into array of words - assign to words variable
- reverse on each word
- combining the each pair in the array - if last element is itself don't combine
- loop until array has just one element
  - return that element (string)
=end

# def reverse_and_combine_text(s)
#   words = s.split
#   return s if words.size == 1
#   loop do
#     words = words.map(&:reverse)
#     words = words.each_slice(2).map(&:join)
#     break if words.size == 1
#   end
#   words.first
# end

# def reverse_and_combine_text(s)
#   s = s.split
#   s = s.map(&:reverse).each_slice(2).map(&:join) while s.size != 1
#   s.first
# end

# def reverse_and_combine_text(s)
#   return s if s.split(' ').size == 1
#   words = s.split(' ')
#   words = words.map { |word| word.reverse }
#   words = words.each_slice(2).to_a.map { |slice| slice.join}.join(' ')
#   reverse_and_combine_text(words)
# end

# p reverse_and_combine_text("abc def") #== "cbafed"
# p reverse_and_combine_text("abc def ghi jkl") #== "defabcjklghi"
#p reverse_and_combine_text("dfghrtcbafed") #== "dfghrtcbafed"
# p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
# p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

=begin
67. Integer reduction
6 kyu
(https://www.codewars.com/kata/59fd6d2332b8b9955200005f/ruby) 

In this Kata, you will be given two integers n and k and your task is to
remove k-digits from n and return the lowest number possible, without
changing the order of the digits in n. Return the result as a string.
Let's take an example of solve(123056,4). We need to remove 4 digits from
123056 and return the lowest possible number. The best digits to remove are
(1,2,3,6) so that the remaining digits are '05'. Therefore,
solve(123056,4) = '05'.
Note also that the order of the numbers in n does not change:
solve(1284569,2) = '12456', because we have removed 8 and 9.
More examples in the test cases.
Good luck!

Problem
input: 2 arguments integers, n, k
output: string
rules:
- return to the lowest integer as string by removing k digits from n
- digits stay in the same order

Data structure
- integers, strings, arrays

Algorithm
- convert n to a string
- find every combination of with k values removed
- find every substring of n that is (n - k) in length
  - 
123
23, 13, 12
1, 2, 3
find the combinations for n -k
- find the lowest sub-string as an integer value
- return that sub-string as string
=end

# def solve(n, k)
#   n.to_s.chars.combination(n.to_s.size - k).min_by { |a| a.join.to_i }.join
# end

# def solve(n, k)
#   n.to_s.chars.combination(n.to_s.size - k).map(&:join).min_by(&:to_i)
# end

# p solve(123056, 1)   # == '12056'
# p solve(123056, 2)   # == '1056'
# p solve(123056, 3)   # == '056'
# p solve(123056, 4)   # == '05'
# p solve(1284569, 1)  # == '124569'
# p solve(1284569, 2)  # == '12456'
# p solve(1284569, 3)  # == '1245'
# p solve(1284569, 4)  # == '124'

=begin
68. Divisible Sum Pairs 
(https://www.hackerrank.com/challenges/divisible-sum-pairs/problem)

Given an array (arr) of integers, and a positive integer k. Find the
number of pairs (i, j) having the sum (arr[i] + arr[j]) that is divisible
by k and i < j. 

input: array, integer
output: integer
rules:
- return the number of element pairs that meet the criteria
  - sum of the pairs is (evenly) divisible by k ( arr % k == 0)
  - && index of the first element is greater than the index of second

Algorithm
- find every pairs the array (where the first element is greater than second)
  - select the sums that are evenly divisible by k
  - return the number of pairs that meet the criteria
=end

# def divisible_sum_pairs(arr, k)
#   arr.combination(2).select { |sub_arr| sub_arr.sum % k == 0 }.count
# end

# p divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
# p divisible_sum_pairs([8, 10], 2) == 1
# p divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
# p divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15

=begin
Problem
input: string
output: string
rules:
- return a string with the characters proceeding hashes canceled
- if there are more hashes than letters return an empty string
- empty string return empty string

Data Structure
strings, arrays

Algorithm
- initialize a result empty string
- iterate through the string argument # with index
  - if character is not a #
    - append current character to result string
  - else (if #) remove the last character from the result string

=end

# def clean_string(string)
#   result = ''
#   string.each_char do |char|
#     char == '#' ? (result[-1] = '' unless result[-1] == nil) : result << char
#   end
#   result
# end

# def clean_string(string)
#   result = []
#   string.each_char { |char| char == '#' ? result.pop : result << char }
#   result.join
# end

# p clean_string('abc#d##c')  #, "ac")
# p clean_string('abc####d##c#')  #, "" )

=begin
Problem
input: integer
output: integer
rules:
- return the count of every positive odd number < n


=end

# def odd_count n
#   result = []
#   1.upto(n - 1) { |num| result << num if num.odd? }
#   result.count
# end

# p odd_count(15) #,7)

# def odd_count n
#   counter = 0
#   1.upto(n - 1) { |num| counter += 1 if num.odd? }
#   counter
# end

# p odd_count(15) #,7)

=begin

input: integer
output: integer
rules: 
- find the next highest year with unique digits

Data
integers, strings/arrays

Algorithm
- loop through each integer increment by 1
  - if the current number has all unique digits return that number

=end

# def distinct_digit_year(year)
#   loop do
#     year += 1
#     return year if year.digits.uniq == year.digits
#   end
# end

# def distinct_digit_year(year)
#   year += 1
#   year += 1 until year.digits.uniq == year.digits
#   year
# end

# p distinct_digit_year(1987) #,2013)
# p distinct_digit_year(2013) #,2014)
# p distinct_digit_year(2229) #,2301)

=begin
Problem
input: array of integer
output: integer
rules: 
- find the lowest sum of a product of 2 elements in the array
- array will be even
- array elements will always be positive

Data structure
integers, arrays

Algorithm
- pair up every 2 elements in the array
- the pairs should sum to the lowest number
- pair the highest number with the lowest number

- sort the array
- match the last number with the first
- create an array of sub arrays
- find the product of the sub-arrays
- return the sum of all the products

=end

# def min_sum(arr)
#   sorted = arr.sort
#   pairs = []
#   pairs << [sorted.pop, sorted.shift] until sorted.empty?
#   pairs.map { |high, low| high * low }.sum
# end

# def min_sum(arr)
#   arr.sort!
#   (0...arr.size/2).map { |i| arr[i] * arr[-i-1] } .sum
# end

# def min_sum(arr)
#   arr = arr.sort
#   sum = 0
#   sum += (arr.shift * arr.pop) until arr.empty?
#   sum
# end

# p min_sum([5,4,2,3]) #).to eq(22)
# p min_sum([12,6,10,26,3,24]) #).to eq(342)
# p min_sum([9,2,8,7,5,4,0,6]) #).to eq(74)
# p min_sum([1,2]) #).to eq(2)
# p min_sum([]) #).to eq(0)

=begin
Problem
input: integer
output: integer
rules:
- return the largest number using the same digits from the argument

Data Structure
integers, strings, arrays

Algorithm
- convert integer into an array of digits
- find every permutation using all the digits
- find the largest permutation

=end

# def max_number(n)
#   n.digits.my_permutation.max.join.to_i
# end

# def max_number(n)
#   n.digits.sort.reverse.join.to_i
# end

=begin
Problem
input: array of integers
output: array of sub-arrays
rules:
- arrange every combination of elements in the array (even if there duplicates)

Algorithm
- iterate through each element in the array with index
  - for each element iterate through the remaining array size - 1

[0, 1, 2] 
# => [0, 2, 1]
=end

# p max_number(213) #).to eq(321)
# p max_number(7389) #).to eq(9873)
# p max_number(63792) #).to eq(97632)
# p max_number(566797) #).to eq(977665)
# p max_number(1000000) #).to eq(1000000)

=begin
input integer
output: array or string
rules:
- return an array containing the divors of an integer
- do not include number or 1
- return a string "n is prime" if n is prime or array is empty

Algorithm
- intitialize result to empty array []
- 2 upto n - 1 iterate through range
  - if current n % number == 0
    - add number to result array 
- if result array is empty return "n is prime"
- else return result array
=end

# def divisors(n)
#   result = []
#   2.upto(n - 1) { |num| result << num if n % num == 0 }
#   result.empty? ? "#{n} is prime" : result
# end

=begin
- return the next number that is a perfect square
- return - 1 if the current argument is not a perfect square

Algorithm
- return -1 argument is not a perfect square
=end

# def find_next_square(sq)
#   return -1 if sq**(1/2r) != (sq**(1/2r)).to_i
#   sq = sq + 1
#   sq = sq.next until sq**(1/2r) == (sq**(1/2r)).to_i
#   sq
# end

# def find_next_square(sq)
#   number = Math.sqrt(sq) + 1
#   number % 1 == 0 ? number**2 : -1
# end

# p find_next_square(121)
