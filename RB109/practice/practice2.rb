require 'pry'
=begin
Problem
input: string
output: expanded string
rules:
- string contains alphanumeric characters (case matters)
- the number proceding the letter determines how many times to repeat the letter
- return string should be letters only
- empty strings return an empty string
- if there no numbers return the original string

Data Structure
- strings, integers, arrays

Algorithm
- create an array of valid numbers as strings
- initialize a variable result to an empty string
- multiplier = 1
- iterate through the argument string
  - if character is number (if character is included in number(strings) array)
    - multiplier = character as an integer
  - else character is a letter
    - character * multiplier append to result string
- return result string
=end

# def string_expansion(str)
#   result = ''
#   multiplier = 1
#   str.each_char do |char|
#     if [*'0'..'9'].include?(char)
#       multiplier = char.to_i
#     else 
#       result << char * multiplier
#     end
#   end
#   result
# end

# p string_expansion('3abc')        #,'aaabbbccc')
# p string_expansion('3D2a5d2f')    #,'DDDaadddddff')
# p string_expansion('0d0a0v0t0y')  #,'')
# p string_expansion('3d332f2a')    #,'dddffaa')
# p string_expansion('abcde')       #,'abcde')

=begin
Problem
input: string
output: string
rules:
- return a string with each word modified
  - move the first letter of each word to the end
  - "ay" is added to the end of the word
- leave punctuation marks untouched
- words will contain only letters

Data Structures
strings, arrays

Algorithm
- seperate the string into an array of words
- iterate through the array of words
  - if current word is not a punctuation (letters)
    - move the first letter to the end
    - append "ay" to the end of the word
- return the array joined with spaces as a string

=end

# def pig_it text
#   text.split.map do |word|
#     word << word[0]
#     word[0] = ''
#     word += "ay" unless word.chars.any? { |char| ![*'A'..'z'].include?(char) }
#     word
#   end.join(' ')
# end

# def pig_it text
#   text.split.map do |word|
#     word << word[0]
#     word[0] = ''
#     word += "ay" unless word =~ /[^A-Z]/i
#     word
#   end.join(' ')
# end

# def pig_it text
#   text.split.map { |w| w =~ /[a-zA-Z]/ ? w[1..-1] + w[0] + 'ay' : w }.join(' ')
# end

# def pig_it text
#   text.split.map do |word|
#     word = (word[1..-1] + word[0] + "ay") unless word =~ /[^A-Z]/i
#     word
#   end.join(' ')
# end

# p pig_it('Pig latin is cool')  #,'igPay atinlay siay oolcay')
# p pig_it('This is my string !')  #,'hisTay siay ymay tringsay !');

=begin
Problem
input: integer
output: boolean
rules:
- return true if integer is prime else return false
- a prime number is divisible by the integers 1 and itself  
- negative numbers can not be prime
- will the input always be an integer?

Data
integer, booleans

Algorithm
- iterate through range (2...n) -
  - if n % range number == 0 return false
  - return true
=end

# def is_prime?(num)
#   return false if num == 1
#   !(2...num).any? { |n| num % n == 0 }
# end

# p is_prime?(3) 
# p is_prime?(4) 

=begin
Problem
input: array
output: array containing only prime
rules:
- select the prime number in a array
- use a new or mutate

Data 
arrays, integers

Algorithm
- iterate thorugh argument select the elemnets that are prime
- return new array 

=end

# require 'prime'

# def select_primes(arr)
#   arr.select { |n| is_prime?(n) }
# end

#p select_primes([1, 2, 3, 4]) #[2, 3]

# def count_primes(arr)
#   select_primes(arr).size
# end

# p count_primes([1, 2, 3, 4]) # 2
# p count_primes([4, 6, 8, 10]) # 0

# require 'prime'

# def count_primes(arr)
#   arr.count { |num| num.prime? }
# end

# p count_primes([1, 2, 3, 4]) # 2
# p count_primes([4, 6, 8, 10]) # 0

=begin
Problem
input: integer, s or p
output: string with the calculation
rules:
- write a program, 
  - prompt the user twice for integer, s or p
  - output the string with the calculation

Algorithm
- prompt the user for input
  - store input as a variable
- use the variable inputs to calculate sum or product
- output the string with the sum or product

=end

# puts ">> Please enter an integer greater than 0:"
# number = gets.to_i

# puts ">> Enter 's' to compute the sum, 'p' to computer the product."
# operation = gets.downcase.chomp

# if operation == 's'
#   total = (1..number).sum
#   result = 'sum'
# else
#   total = (1..number).reduce(:*)
#   result = 'product'
# end

# puts "The #{result} of the integers between 1 and #{number} is #{total}."

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

=begin
- initialize a result variable to an empty array
- iterate through (0...arr1.size)
  - append to result array arr1 at index and arr2 at index
- return result 
=end

# def interleave(arr1, arr2)
#   result = []
#   (0...arr1.size).each { |index| result << arr1[index] << arr2[index] }
#   result
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

# def interleave(arr1, arr2)
#   result = []
#   arr1.each_with_index { |ele, index| result << ele << arr2[index] }
#   result
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

=begin
Problem
input: 2- 3 parameters string, start index (end index)
rules:
- reuturn a substring of string based on indexes

Data structures
integers, strings

Algorithm
- take a slice of the string based on the ranges
- if end index is greater than string size return through to end of string
- if there end index return the character at the first index

=end

# def substring(string, start_index, end_index = start_index)
#   string[start_index..end_index]
# end

# p substring("honey", 0, 2)
# p substring("honey", 1, 2)
# p substring("honey", 1, 9)
# p substring("honey", 2)

=begin
Algorithm
- guard clause for no end_index
- split the string into an array of characters
- initialize a variable result to an empty array
- iterate through each character of the string with index
  - if index is >= start_index && <= end_index
    - append character to result array
- return result joined into a string
=end

# def substring(string, start_index, end_index = nil)
#   return string[start_index] unless end_index
#   result = []
#   string.chars.each_with_index do |char, index|
#     result << char if (start_index..end_index).include?(index)
#   end
#   result.join
# end

# p substring("honey", 0, 2)
# p substring("honey", 1, 2)
# p substring("honey", 1, 9)
# p substring("honey", 2)

=begin
Problem
input: string
output: array of substring
rules: 
- return an array of all substrings excluding 1 letter words
- substrings will start at index 1, 2, 3, etc
- use the method from the previous problem

Data structure
- strings, arrays, integers

Algorithm
- iterate through the 0 through to end index (string size - 2)
  - start index
- iterate through start index + 1 to (string size -1)
  - end index

=end

# def substring(string, start_index, end_index = start_index)
#   string[start_index..end_index]
# end

# def substrings(string)
#   result = []
#   (0..(string.size - 2)).each do |start_index|
#     ((start_index + 1)...string.size).each do |end_index|
#       p "start_index: #{start_index} end_index: #{end_index}"
#       result << string[start_index..end_index]
#     end
#   end
#   result
# end

# p substrings('band') # == ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings('')
# p substrings('ba')

=begin
Algorithm
- iterate through a range 0..(string.size - 2)
  - start index
- iterate through range 2..(string.size - start_index)
  - size of the string slice
- find each sub_string
  - start index, size of slice of string
=end

# def substrings(string)
#   result = []
#   (0..(string.size - 2)).each do |start_index|
#     (2..(string.size - start_index)).each do |slice_size|
#       result << string[start_index, slice_size]
#     end
#   end
#   result
# end

# p substrings('band') # == ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings('')
# p substrings('ba')

=begin
Algorithm
- initialize result variable to an empty array
- convert the string into an array of characters
- iterate through each character of the string with index
  - index will be the starting index
  - iterate n number of times through substring
  (n = string.size - index + 1)
    append string[index..index + n + 1] to result array
- return the result array
=end

# def substring(string, start_index, end_index = start_index)
#   string[start_index..end_index]
# end

# def substrings(string)
#   result = []
#   string.chars.each_with_index do |_letter, index|

#     (string.size - (index + 1)).times do |n|
#       result << substring(string, index, (index + n + 1))
#     end

#   end
#   result
# end

# p substrings('band') # == ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings('')
# p substrings('ba')

# def palindromes(string)
#   substrings(string).select { |sub_string| sub_string == sub_string.reverse }
# end

# p palindromes("ppop") # => ["pp", "pop"]

# def largest_palindrome(string)
#   palindromes(string).max_by { |str| str.size }
# end

# p largest_palindrome("ppop") # => 'pop'

=begin
Algorithm
- initialize results to palindromes array (takes a string argument)
- initialize longest variable to first element in the results array
- iterate through each string within the result array
  - if current string size > longest size
    - reassign longest to current string
- return the longest string
=end

# def largest_palindrome(string)
#   results = palindromes(string)
#   longest = results[0]
#   results.each do |word|
#     longest = word if word.size > longest.size
#   end
#   longest
# end

# p largest_palindrome("ppop") # => 'pop'

=begin
Problem
input: array (can be empty)
output: integer (sum or 0)
rules:
- return the maximum sum of contiguous subsequence in an array
- return 0 if array is empty or all the elements are negative

Data Structure
arrays, integers

Algorithm
- return 0 if array is empty or all negative integers
- find every substring in the array
- find the highest sum among the substrings

=end

# def max_sequence(arr)
#   return 0 if arr.empty? || arr.all?(&:negative?)
#   find_substrings_sum(arr).max
# end

# def find_substrings_sum(arr)
#   result = []
#   (0...arr.size).each do |start_index|
#     (start_index...arr.size).each do |end_index|
#       result << arr[start_index..end_index].sum
#     end
#   end
#   result
# end

# def max_sequence(array)
#   (1..array.size).map { |i| array.each_cons(i).map(&:sum) }.flatten.push(0).max
# end

# def max_sequence(arr)
#   return 0 if arr.empty?

#   max_ending_here = max_so_far = 0
  
#   arr.each do |n|
#     p "element: #{n}"
#     max_ending_here = p([n, max_ending_here + n].max)
#     max_so_far = p([max_so_far, max_ending_here].max)
#   end
  
#   max_so_far
# end

#p max_sequence([]) #, 0)
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #, 6)
# p max_sequence([11]) #, 11)
# p max_sequence([-32]) #, 0)
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) #, 12)

=begin
Problem
input: array of sub_arrays 2 dim array
output: array of the elements in a spiral sequence
rules:
- return to array of the elements in the matrix in a clockwise pattern
- return [[]] if array return []

Data strucutres
arrays, integers for index

Algorithm
- initialize result array
- create a loop
- use the first array element (n) unless n is empty
- forward index = 0
- backwards index = arr.size - 1
- shift and append every element in forward index until array is empty
- increment forward index by 1
- forward index pop to backwards index - 1 pop last element from arrays
- pop last element from every element of backwards index until array empty
- decrement backwards index - 1
- shift first element of backwards index to forward index
- repeat
array = [[1,2,3],
         [8,9,4],
         [7,6,5]]

- append the first row elements (n)
- last column of middle elements 
(n + 1)[arr size - 1] (n + 2)...(reach empty array)
- last last row in reverse order (array size - 1)
- then row n + 1
snail(array) #=> [1,2,3,4,5,6,7,8,9]
=end

# WIP
# def snail(array)
#   return [] if array[0].empty?
#   result = []
#   forward_index = 0
#   backwards_index = array.size - 1
#   loop do
#     break if array[forward_index].empty? && array[backwards_index].empty?
#     result << array[forward_index].shift until array[forward_index].empty?
#     forward_index += 1
#     forward_index.upto(backwards_index) { |n| result << array[n].pop}
#     result << array[backwards_index].pop until array[backwards_index].empty?
#     backwards_index -= 1
#   end
#   result
# end

# p snail([[1,2,3],[4,5,6],[7,8,9]]) #, [1, 2, 3, 6, 9, 8, 7, 4, 5])

# WIP
# def snail(array)
#   result = []
#   result << array.delete_at(0)
#   p array.transpose
#   result << array.delete_at(-1)
#   # loop do
#   #   break if array.empty?
#   # end
#   result.flatten
# end

# p snail([[1,2,3],[4,5,6],[7,8,9]]) #, [1, 2, 3, 6, 9, 8, 7, 4, 5])

=begin
Problem
input: string
output: integer
rules:
- convert the english equation into an integer
- mix of english numbers with numbers e.g. eight or 8
- solve for equations + -
- how high is the range (2039 + 23423)
  - assume that they will single digits

Data structure
- strings and integers, arrays

Algorithm
- covert strings into the corresponding equations + - 
- convert digits
  - hash string to number value to string
  - convert digit strings to digit e.g. '8' to 8
- convert operators
  - based
- convert to arthmatic equation then evaluation
'2 + 2'  *eval('2 + 2')

- split every word into an array of words
- create a hash key for 0 - 9
- translate every word
- evaluate the results
=end

# NUMBERS_OPERATORS = { 
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9',
#   'plus' => '+', 'minus' => '-', 'times' => '*', 'divided by' => '/'
# }

# def computer(english)
#  eval(english.split(' ').map do |word|
#     word = NUMBERS_OPERATORS[word] if NUMBERS_OPERATORS.include?(word)
#     word
#   end.join(' '))
# end

# p computer("two plus two")  # => 4
# p computer("seven minus six")  # => 1
# p computer("zero plus 8")  # => 8
# p computer("two plus two minus three")  # => 1
# p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # =>15

=begin
Algorithm
- iterate through NUMBERS_OPERATORS
  - replace every match with the value in the string
- create loop
  - Take the first 3 values
    - return the result as an integer
  - replace those 3 values with that integer
  - break if array size == 1
- return the 1 element in the array

=end

# def computer(english)
#   NUMBERS_OPERATORS.each do |key, value|
#     english.gsub!(key, value)
#   end
#   words = english.split(' ')
#   words[0..2] = evaluate_three(words.slice(0, 3)) until words.size < 3
#   words[0].to_i
# end

# def evaluate_three(arr)
#   first = arr[0].to_i
#   operation = arr[1]
#   last = arr[-1].to_i
#   operation == '-' ? (first - last).to_s : (first + last).to_s
# end

=begin
Algorithm
- iterate through an array with the 4 operations
- times, divided by, add, subtract in that order
- find the index of all divided by
- take the element at index + 1 and index - 1 and calculate

=end

# def computer(english)
#   NUMBERS_OPERATORS.each do |key, value|
#     english.gsub!(key, value)
#   end
#   words = english.split(' ')
#   loop do
#     first, operation, last = words.take(3)
#     first = first.to_i
#     last = last.to_i
#     total = 
#       case operation
#       when '+' then first + last
#       when '-' then first - last
#       when '*' then first * last
#       when '/' then first / last
#       end

#     words[0..2] = total.to_s

#     break if words.size < 3
#   end
#   words.first.to_i
# end

# p computer("two plus two")  # => 4
# p computer("seven minus six")  # => 1
# p computer("zero plus 8")  # => 8
# p computer("two plus two minus three")  # => 1
# p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # =>15
# p computer("eight times four plus six divided by two minus two") #=> 17, not 33

# p computer("eight times four plus six divided by two minus two") #=>33

=begin
Algorithm
- iterate through an array with the 4 operations
- times, divided by, add, subtract in that order
- find the index of all divided by
- take the element at index + 1 and index - 1 and calculate

- create 2 loops - for divide/multiply
                 - for plus, minus
=end

# def calc(arr)
#   first, operation, last = arr
#   first = first.to_i
#   last = last.to_i
#   result =
#     case operation
#     when '/' then first / last
#     when '*' then first * last
#     when '+' then first + last
#     when '-' then first - last
#     end
#   result.to_s
# end

# def computer(english)
#   NUMBERS_OPERATORS.each do |key, value|
#     english.gsub!(key, value)
#   end

#   words = english.split(' ')
#   operations = ['*', '/']

#   operations.each do |oper|
#     words.each_with_index do |word, index|
#       if word == oper
#         words[index - 1, 3] = calc(words[index - 1, 3])
#       end
#     end
#   end

#   #eval(words.join(' '))
#   loop do
#     first, operation, last = words.take(3)
#     first = first.to_i
#     last = last.to_i
#     total = 
#       case operation
#       when '/' then first / last
#       when '*' then first * last
#       when '+' then first + last
#       when '-' then first - last
#       end

#     words[0..2] = total.to_s

#     break if words.size < 3
#   end
#   words.first.to_i
# end

# p computer("two plus two")  # => 4
# p computer("seven minus six")  # => 1
# p computer("zero plus 8")  # => 8
# p computer("two plus two minus three")  # => 1
# p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # =>15
# p computer("eight times four plus six divided by two minus two") #=> 17, not 33
# p computer("eight times four plus six divided by two minus two") #=>33

=begin

Algorithm
- split each word into an array of words
- iterate through each word in the array
  - capitalize on each word and save to a new array
- return the array joined into a string
=end

# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end

# p word_cap('four score and seven') # 'Four Score And Seven'

=begin
Algorithm
- initialize counter variable to 0
- iterate thorugh every month and check if the 13th in that month is friday?
  - add that to a counter
- return counter
=end

# def friday_13th?(year)
#   (1..12).reduce(0) { |sum, month| Time.new(year, month, 13).friday? ? sum + 1 : sum }
# end

# p friday_13th?(2015) # 3
# p friday_13th?(1986) # 1

=begin

Algorithm
- 1 operation : number operator number
- > 1 operation : append operator number
- initialize a result variable to an string (start result with a number)
- generate random number/operators for each number
  - number times iterate (start result with a number)
    - if iteratation n == 1 
      - appened num operator num
    - else 
      - append operator num
  substitute divided with divided by
- return result string
=end

# NUMBERS = %w(zero one two three four five six seven eight nine ten)
# OPERATORS = %w(plus minus times divided)

# def mathphrase(num)
#   string = "#{NUMBERS[rand(11)]}"
#   num.times { string << " #{OPERATORS.sample}" << " #{NUMBERS.sample}" }
#   string.gsub!('divided', 'divided by')
#   string
# end

# p mathphrase(1) # "six minus six"
# p mathphrase(3) # "seven minus one minus three divided by six"

# 10.times { p mathphrase(rand(20) + 1) }

=begin
Problem 1: Repeated substring
Given a non-empty string, check if it can be constructed by taking a
substring of it and appending multiple copies of the substring together.
You may assume the given string consists of lowercase English letters only.

Example 1:
 - Input "abab"
 - Output: True
 - Explanation: It's the substring 'ab' twice.

Example 2:
 - Input: "aba"
 - Output: False

Problem
input: string
output: boolean
rules:
- return true if string can be built with any substring appending multiple copies
- assume string is at least 1 character

Data structure
strings, booleans, arrays

Algorithm
- find all the substrings (index 0 up to (non- inclusively) string size / 2)
- repeat/append substrings to new string until new string size is >= substring
size
- return true if new string == string argument

=end

# def repeated_substring(string)
#   substrings = find_substrings(string)
#   substrings.any? { |sub_str| sub_str * (string.size / sub_str.size) == string }
# end

# def find_substrings(string)
#   result = []
#   (0...(string.size / 2)).each do |start_index|
#     (start_index...(string.size / 2)).each do |end_index|
#       result << string[start_index..end_index]
#     end
#   end
#   result
# end

# p repeated_substring('abab') #== true
# p repeated_substring('aba') #== false
# p repeated_substring('aabaaba') == false
# p repeated_substring('abaababaab') == true
# p repeated_substring('abcabcabcabc') == true
# p repeated_substring('aaaaa') == true

# def find_substrings(str)
#   result = []
#   (1..str.size).each do |slice_size|
#     str.chars.each_cons(slice_size) { |sub_arr| result << sub_arr.join }
#   end
#   result
# end

# p find_substrings('taco')
# p find_substrings('tac')

# def repeated_substring(string)
#   substrings = []
#   (1..(string.size / 2)).each do |string_size|
#     substrings << string[0, string_size]
#   end

#   substrings.any? { |sub_str| sub_str * (string.size / sub_str.size) == string }
# end

# p repeated_substring('abab') #== true
# p repeated_substring('aba') #== false
# p repeated_substring('aabaaba') == false
# p repeated_substring('abaababaab') == true
# p repeated_substring('abcabcabcabc') == true
# p repeated_substring('aaaaa') == true

=begin
Problem 2: Common Chars
Given an array of strings made only from lowercase letters, return an array
of all characters that show up in all strings within the given array
(including duplicates). For example, if a character occurs 3 times in all
strings but not 4 times, you need to include that character three times in
the final answer.

Problem
input: array of strings
output: array (empty array)
rules:
- return an array of letters included in every word in the argument array 
(include duplicates)
- lowercase only

Data Structures
strings, arrays

Algorithm
- initialize an empty result array
- split the first word in the array argument into an array of characters
- iterate through each character in the first word in the array argument
  - iterate through each word in the array argument (1..-1)
    - delete the first occurence of the current character * sub!
    - if the letter is deleted in every word
      - add character to result array

- find a count of every letter in each word
- return the lowest number of letters add those to an array with quantity
=end

# def common_chars(arr)
#   result = []
#   words = arr[1..-1]
#   arr[0].chars.each do |char|
#     result << char if words.all? { |word| word.sub!(char, '') }
#   end
#   result
# end

# p common_chars(['bella', 'label', 'roller']) #== ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
# p common_chars(['bella']) #== []

=begin
Algorithm
- iterate through each word in the argument array
  - find a count of every letter in each word
    - save as a hash
  - compare find the minimum value of each letter
  - add to an array the letter count times
- iterate thorugh each character of the first word
  - find the lowest value using that character as the key
    - append into a result array that chracter (lowest)value times
- return array
  - return the lowest number of letters add those to an array with quantity
=end

# def common_chars(arr)
#   result = []
#   char_counts =
#     arr.map do |word|
#       word.chars.tally
#     end
#   arr[0].chars.each do |char|
#     char_counts.each do |hash|
#       hash[char]
#     end
#   end
#   result
# end

# def common_chars(arr)
#   result = []
#   char_count = Hash.new

#   arr[0].chars.each do |char|
#       arr.each do |word|
#         if char_count[char] == nil
#           char_count[char] = [word.count(char)]
#         else
#           char_count[char] = char_count[char] + [word.count(char)]
#         end
#       end
#   end

#   char_count.each { |k, v| v.min.times { result << k } }
#   result
# end

# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
# p common_chars(['bella']) == ["b", "e", "l", "l", "a"]

# def common_chars(arr)
#   arr[0].chars.select { |char| arr.all? { |word| word.sub!(char, "") } }
# end

# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
# p common_chars(['bella']) == ["b", "e", "l", "l", "a"]

# def common_chars(arr)
#   hash = Hash.new { Array.new }
#   result = []

#   arr[0].chars.each do |char|
#     arr.each do |word|
#       if arr.all? { |word| word.include?(char) }
#         hash[char] = hash[char] << word.count(char)
#       end
#     end 
#   end

#   hash.each { |char, counts| counts.min.times { result << char } }
#   result
# end

# p common_chars(['bella', 'label', 'roller']) #== ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
# p common_chars(['bella']) == ["b", "e", "l", "l", "a"]

=begin
Problem 1: Next biggest number
You have to create a method that takes a positive integer number and returns
the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

Problem
input: integer
output: integer 
rules:
- given a positive integer
- return the next largest number formed using the same digitis

Data structures
strings, integer, arrays?

Algorithm
- count from number to a maximum ()
  - return the next number the uses the same digits
  - else return -1

- convert integer to a string
- find all substrings of the number (permutation)
- sort by integer value and return the highest number using the digits
- if no valid substrings are found return -1
=end

# def next_bigger_num(num)
#   maximum = ('9' * num.to_s.size).to_i
#   (num + 1).upto(maximum) do |n|
#     return n if num.digits.sort == n.digits.sort
#   end
#   -1
# end

# p next_bigger_num(9) #== -1
# p next_bigger_num(12) #== 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) #== -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

# def next_bigger_num(num)
#   numbers = num.to_s.chars.permutation.map { |sub_arr| sub_arr.join.to_i }.sort
#   result = numbers[numbers.index(num).next]
#   result != num && result != nil ? result : -1
# end

# p next_bigger_num(9) #== -1
# p next_bigger_num(12) #== 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) #== -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

# def next_bigger_num(num)
#   max = num.digits.sort.reverse.join.to_i
#   (num + 1).upto(max) do |n|
#     return n if max == n.digits.sort.reverse.join.to_i
#   end
#   -1
# end

# p next_bigger_num(9) #== -1
# p next_bigger_num(12) #== 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) #== -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

=begin
Problem 1: Max sequence
The maximum sum subarray problem consists of finding the maximum sum of a
contiguous subsequence in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

The easy case is when the array is made up of only positive numbers and
the maximum sum is the sum of the whole array. If the array is made up of
negative numbers, return 0 instead. 

An empty array is considered to have zero greatest sum. Note that the empty
array is also a valid subarray

Problem
input: array (can be empty)
output: integer(greatest sum)
rules:
- return the greatest sum of contiguous subsequence
- return 0 if array is empty or all negative numbers or greatest sum is 0

Data structure
arrays, integers

Algorithm
- return 0 if array empty or all negative numbers
- find every subarray
- find the sum of every subarray
- return the largest sum
=end

# def max_sequence(arr)
#   return 0 if arr.all?(&:negative?)#|| arr == [] note:all? returns true on empty arrays
#   sub_arr_sum = find_sub_arr_sum(arr)
#   sub_arr_sum.max
# end

# def find_sub_arr_sum(arr)
#   sub_arr = []
#   (0...arr.size).each do |start_index|
#     (start_index...arr.size).each do |end_index|
#       sub_arr << arr[start_index..end_index].sum
#     end
#   end
#   sub_arr
# end

# p max_sequence([]) #== 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

=begin
Problem 2: Common Prefix
Write a method to find the longest common prefix string amongst an array of
strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

Problem
input: array of strings
output: string (or empty string)
rules:
- find the longest common prefix string in the array
- prefix string starts at index 0
- return an empty string if no common prefix
- all inputs are lowercase

Data Strucutres
strings, arrays, integers(index)

Algorithm
- initialize a result variable to an empty string
- iterate through each character of the first string in the array
  - if current character is in every word
  - append to result variable
  - else return result string
=end

# def common_prefix(arr)
#   result = ""
#   arr[0].chars.each_with_index do |char, index|
#     if arr[1..-1].all? { |word| word[index] == char }
#       result << char
#     else
#       return result
#     end
#   end
#   result
# end

# puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
# puts common_prefix(["dog", "racecar", "car"]) == ""
# puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# puts common_prefix(["throne", "dungeon"]) == ""
# puts common_prefix(["throne", "throne"]) == "throne"

=begin
Problem 1: Reverse a string without using the built-in #reverse method
take a string as an argument, return the string in reverse order without
using the built-in reverse method.

reverse_string("abcde") == "edcba"
reverse_string(" ") == " "
reverse_string("football") == "llabtoof"

Problem
input: string
output: reversed string

Data structure
string, array

Algorithm
- spilt the string into an array of character
- remove the last character and append to a new string

=end

# def reverse_string(str)
#   result = ""
#   chars = str.chars
#   result << chars.pop until chars.empty?
#   result
# end

# p reverse_string("abcde") #== "edcba"
# p reverse_string(" ") == " "
# p reverse_string("football") == "llabtoof"

=begin
Problem 2: Fizzbuzz
write a method that takes two arguments: the first is the starting number,
and the second is the ending number. Print out all numbers between the two 
numbers except if a number is divisible by 3, print out "Fizz", if a number
is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5,
print out "FizzBuzz".

Problem
input: 2 integer
output: print number, or a string - Fizz or BUZZ or Fizzbuzz
rules:
- print number
  - if number is divisible by 3
    - print Fizz
  - if divisible by 5
    - print Buzz
  - if divisible by both
    - print Fizz Buzz

Data
- strings, integers, range

Algorithm
- iterate through the range num1 upto num2
- * case statement current number
- if divisible 3 and 5
  - print FizzBuzz
- if % 3
  ...Fizz
- if % 5
  Buzz
- else print number

=end

# def fizzbuzz(num1, num2)
#   num1.upto(num2) do |n|
#     if n % 3 == 0 && n % 5 == 0
#       puts "FizzBuzz"
#     elsif n % 3 == 0
#       puts "Fizz"
#     elsif n % 5 == 0
#       puts "Buzz"
#     else
#       puts n
#     end
#   end
#   nil
# end

# fizzbuzz(1, 10)
# fizzbuzz(1, 15)

# # Problem 3: Product search
# PRODUCTS = [
#   { name: "Thinkpad x210", price: 220},
#   { name: "Thinkpad x220", price: 250},
#   { name: "Thinkpad x250", price: 979},
#   { name: "Thinkpad x230", price: 300},
#   { name: "Thinkpad x230", price: 330},
#   { name: "Thinkpad x230", price: 350},
#   { name: "Thinkpad x240", price: 700},
#   { name: "Macbook Leopard", price: 300},
#   { name: "Macbook Air", price: 700},
#   { name: "Macbook Pro", price: 600},
#   { name: "Macbook", price: 1449},
#   { name: "Dell Latitude", price: 200},
#   { name: "Dell Latitude", price: 650},
#   { name: "Dell Inspiron", price: 300},
#   { name: "Dell Inspiron", price: 450}
# ]

# query = {
#   price_min: 240,
#   price_max: 280,
#   q: "thinkpad"
# }

# query2 = {
#   price_min: 300,
#   price_max: 450,
#   q: 'dell'
# }

# =begin
# Problem
# input: hash ( 3 keys)
# output: array of matching hashes
# rules:
# - return all hashes that match the criteria
#   - price_min, pricemax, q (string search)

# Data
# arrays, hashes, strings, integers, symbols

# Algorithm
# - select the price key with the value of a certain range
# - select the name key that matches the string (case insensitive)
# - return an array with the matches
# =end

# def search(query)
#   PRODUCTS.select do |product_hash|
#     (query[:price_min]..query[:price_max]).include?(product_hash[:price]) &&
#     product_hash[:name].downcase.include?(query[:q].downcase)
#   end
# end

# p search(query)
# # => [ { name: "Thinkpad x220", price: 250} ]

# p search(query2)
# #  => [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price 450} ]

# p [2, 3, 1, 6].sort_by { |a, b| a <=> b }

=begin
Problem 1: Substring test
Given 2 strings, your job is to find out if there is a substring that appears
in both strings. You will return true if you find a substring that appears
in both strings, and false if not. A substring is longer than 1 character.

Problem
input: 2 strings
output: boolean
rules:
-return true if strings share a common substring longer than 1 character (2+)
- case insensitive

Data
strings, booleans, arrays

Algorithm
- find every substring at least 2 character (array of substrings)
- iterate array any? substrings are included in both strings

- find_substrings method
- iterate through a range 0 upto string size - 2 (start index)
  - iterate thorugh 2, upto (string.size - start_index)  - slice size
=end

# def substring_test(str1, str2)
#   substrings = find_substrings(str1.downcase)
#   substrings.any? { |sub_str| str2.downcase.include?(sub_str) }
# end

# def find_substrings(str)
#   result = []
#   0.upto(str.size - 2) do |index|
#     2.upto(str.size - index) do |slice_size|
#       result << str[index, slice_size]
#     end
#   end
#   result
# end

# puts substring_test('Something', 'Fun') == false
# puts substring_test('Something', 'Home') == true
# puts substring_test('Something', ' ') == false
# puts substring_test('BANANA', 'banana') #== true
# puts substring_test('test', 'llt') == false
# puts substring_test(' ', ' ') == false
# puts substring_test('1234567', '541265') == true

# def substring_test(str1, str2)
#   str1_chars = str1.downcase.chars
#   str2_chars = str2.downcase.chars
#   str1_chars.each_with_index do |char1, index1|
#     str2_chars.each_with_index do |char2, index2|
#       return true if char1 == char2 &&
#                      str1_chars[index1 + 1] == str2_chars[index2 + 1] &&
#                      index1 != str1.size - 1
#     end
#   end
#   false
# end

# puts substring_test('Something', 'Fun') == false
# puts substring_test('Something', 'Home') == true
# puts substring_test('Something', ' ') == false
# puts substring_test('BANANA', 'banana') == true
# puts substring_test('test', 'llt') == false
# puts substring_test(' ', ' ') == false
# puts substring_test('1234567', '541265') == true

=begin
Problem 2: Scramble
Write a function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise, return false.

Problem
input: 2 strings
output: boolean
rules:
- return true if str2 characters are all included 

Data structure
strings, booleans

Algorithm
- delete or substute destructively each character of str2 from str1 
  - return false if character was not present to delete
  - else return true
=end

# def scramble(str1, str2)
#   !str2.chars.any? { |char| !str1.sub!(char, '') }
# end

# def scramble(str1, str2)
#   str2.chars.all? { |char| str1.sub!(char, '') }
# end

# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('scriptjava', 'javascript') == true
# p scramble('scriptingjava', 'javascript') == true

# def scramble(str1, str2)
#   str2.chars.all? { |char| str2.count(char) <= str1.count(char) }
# end

# def scramble(str1, str2)
#   str2.chars.each do |char|
#     return false unless str2.count(char) <= str1.count(char)
#   end
#   true
# end

# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('scriptjava', 'javascript') == true
# p scramble('scriptingjava', 'javascript') == true

=begin
Problem 1: Longest Palindrome
Find the length of the longest substring in the given string that is the same
in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

Problem
input: string
output: integer (length)
rules:
- find the length of the longest substring that is a palindrome
- case sensitivity?

Data
strings, integers, arrays

Algorithm
- find every substring store as an array
- iterate through substring
  - if palindrome select into a new array
- return the longest string from palindrome array

=end

# def longest_palindrome(str)
#   return 0 if str.empty?
#   palindrome_substrings = palindrome_substrings(str)
#   palindrome_substrings.max_by(&:size).size
# end

# def palindrome_substrings(str)
#   result = []
#   0.upto(str.size - 1) do |start_index|
#     start_index.upto(str.size - 1) do |end_index|
#       sub_str = str[start_index..end_index]
#       result << sub_str if sub_str == sub_str.reverse
#     end
#   end
#   result
# end

# puts longest_palindrome('') == 0
# puts longest_palindrome('a') == 1
# puts longest_palindrome('aa') == 2
# puts longest_palindrome('baa') == 2
# puts longest_palindrome('aab') == 2
# puts longest_palindrome('baabcd') == 4
# puts longest_palindrome('baab1kj12345432133d') == 9
# puts longest_palindrome("I like racecars that go fast") == 7

=begin
Algorithm
- max slice size(string size) downto 1 (iterate through slice size)
  - take each consecutive slice with slice size
  - if current slice == current slice backwards
    - return slice size
- return 0
=end

# def longest_palindrome(str)
#   str.size.downto(1) do |slice_size|
#     str.chars.each_cons(slice_size) do |sub_arr|
#       return slice_size if sub_arr.join == sub_arr.join.reverse
#     end
#   end
#   0
# end

# puts longest_palindrome('abc') #== 0
# puts longest_palindrome('') == 0
# puts longest_palindrome('a') == 1
# puts longest_palindrome('aa') == 2
# puts longest_palindrome('baa') == 2
# puts longest_palindrome('aab') == 2
# puts longest_palindrome('baabcd') == 4
# puts longest_palindrome('baab1kj12345432133d') == 9
# puts longest_palindrome("I like racecars that go fast") == 7

=begin
Problem 1: Find Even Index
You are given an array of integers. Your job is to take that array and find
an index N where the sum of the integers to the left of N is equal to the sum
of the integers to the right of N. If there is no index that would make this
happen, return -1. Empty arrays are equal to 0 in this problem.

Problem
input: array of integers
output: integer (index)
rules:
- Find index n where sum of the integer left of n == sum of integers to the
right of n
- do no include n in the sums
- return -1 if no index is found
- empty arrays are = 0

Data structure
- arrays integers, 

Algorithm
- return 0 if argument array is empty
- iterate through index of argument array
- slice array to find sub array left of index
  - initialize left_side variable to this sub-array

- slice array to find sub-array right of index
  - initialize right_side variable to this sub-array
- find the sum of each sub-array
  - compare each sum
  - return index if sums are ==
- return -1 if no matches

[1, 2, 3]
i: 0 [], [2, 3] 
left_side = arr[0, i]
right_side = arr[i + 1, arr.size - 1 - index]
i: 1 [1], [3]
left_side - arr[0, i]
i: 2 [1, 2], []
left_side - arr[0, i]
=end

# def find_even_index(arr)
#   return 0 if arr.empty?
#   (0...arr.size).each do |index|
#     left_side = arr[0, index]
#     right_side = arr[(index + 1), (arr.size - 1 - index)]
#     return index if left_side.sum == right_side.sum 
#   end
#   -1
# end

# p find_even_index([1, 2, 3])
# p find_even_index([]) == 0
# p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
# p find_even_index([1, 100, 50, -51, 1, 1]) == 1
# p find_even_index([1, 2, 3, 4, 5, 6]) == -1
# p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
# p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
# p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
# p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

=begin
Problem 1: Substring at index
Write a method that will return a substring based on specified indices.

Problem
input: 2 - 3 arguments, string, start index (end_index)
output: substrings
rules:
- based on the indexes return a substring
- if only 1 index is given return substing at that index

Data structures
strings, integers

Algorithm
- take the slice of the string with index provided
str[index1..index2]
=end

# def substring(str, start_index, end_index = start_index)
#   str[start_index..end_index]
# end

# p substring("honey", 0, 2) == "hon"
# p substring("honey", 1, 2) == "on"
# p substring("honey", 3, 9) == "ey"
# p substring("honey", 2) == "n"

=begin
Problem 2: All Substrings
Write a method that finds all substrings in a string, no 1 letter words.

Problem
input: string
output: array of substrings
rules:
- return an array of all substrings in string with more than 1 letter

Data
strings, arrays

Algorithm
- find all substrings
  - iterate through range for the start index
    - iteration through range of the end index
      - create substring from start to end index
      - if substring > 1 character long
        - add to result array
- if substring length is greater than 1
  - add to result array
- return results array
=end

# def substrings(str)
#   result = []
#   (0...str.size).each do |start_index|
#     (start_index...str.size).each do |end_index|
#       sub_str = str[start_index..end_index]
#       result << sub_str if sub_str.size > 1
#     end
#   end
#   result
# end

# p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
# p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']

=begin
Problem 3: Palindromes
# Write a method that will return all palindromes within a string.


# Write a method that finds the longest substring that is a palindrome within
a string.
=end

# def substrings(str)
#   result = []
#   (0...str.size).each do |start_index|
#     (start_index...str.size).each do |end_index|
#       sub_str = str[start_index..end_index]
#       result << sub_str if sub_str.size > 1 && sub_str.reverse == sub_str
#     end
#   end
#   result
# end

# def palindromes(str)
#   substrings(str)
# end

# def longest_palindrome(str)
#   palindromes = palindromes(str)
#   palindromes.max_by { |word| word.size }
# end

# p palindromes('ppop') == ['pp', 'pop']
# p longest_palindrome("ppop") == 'pop'

=begin
Problem 4: Capitalize words
# Write a method that takes a single String argument and returns a new
string that contains the original value of the argument with the first
character of every word capitalized and all other letters lowercase. You
may assume that words are any sequence of non-blank characters.

Problem
input: string
output: string
rules:
- return a string with words capitalized
- words are any sequence of non-blank characters

Data
strings, arrays

Algorithm
- split the string into an array of words
- iterate through each word
  - mutate the word and capitalize
=end

# def word_cap(str)
#   str.split.each(&:capitalize!).join(' ')
# end

# p word_cap('four score and seven') #== 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin
Problem 5: Interweaving Arrays
Write a method that combines two Arrays passed in as arguments and returns
a new Array that contains all elements from both Array arguments, with the
elements taken in alternation.

You may assume that both input Arrays are non-empty and that they have the
same number of elements.

Problem
input: 2 arrays
output: 1 array
rules:
- interleave the elements starting with the first element of the first array
- arrays are the same size and not empty

Data structure
arrays, 

Algorithm
- interveave arrays

=end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, "a", 2, "b", 3, "c"]

=begin
Problem 6: Sum same consecutive integers
You are given an array that contains only integers (positive and negative).
Your job is to sum only the numbers that are the same and consecutive.
The result should be one array.

You can assume there is never an empty array and there will always be an
integer.

Problem
input: array of integers
output: array of sums
rules:
- return an array of the sums of numbers that are the same and consecutive
- array is never empty

Data
integers, arrays

Algorithm
- initialize a variable result to an empty array
- initialize a variable previous to nil
- iterate through the array argument
  - if 
=end

# def sum_consecutives(arr)
#   arr.group_by { |ele| ele }.values.map(&:sum)
# end

# p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) #== [1,12,0,4,6,2]
# p sum_consecutives([1,1,7,7,3]) == [2,14,3]
# p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
