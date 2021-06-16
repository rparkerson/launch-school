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
