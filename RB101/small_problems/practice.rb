require 'pry'

# Practice exercises for small_problems

# def repeat(str, num)
#   num.times { puts str }
# end

# repeat('Hello', 3)

# def repeat(str, num)
#   puts [str] * num
# end

# repeat('Hello', 3)

# def repeat(str, num)
#   (1..num).each { puts str }
# end

# repeat('Hello', 3)

# def repeat(str, num)
#   puts "#{str} ".*(num).split
# end 

# repeat('Hello', 3)

=begin
input: integer
output: boolean (if abs is odd)
rules:
- create a method
- takes 1 integer object (+, - , 0)
- returns true if absolute value is odd (false otherwise)
- assume argument is a valid integer
- 0 is not odd
- can not use #odd? or #even?

D
integers

A
- return false if 0
- find the absolute value (make positive)
- check if number is odd
=end

# def is_odd?(num)
#   num.abs % 2 != 0
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# def is_odd?(num)
#   num % 2 != 0
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# def is_odd?(num)
#   num.remainder(2) != 0
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

=begin
input: integer(positive)
output: array (each digit split)
rules:
- create a method
- method takes 1 argument (integer positive)
- returns an array
- digits are in the same order

D
arrays
integers

A
- split the number into individual digits
- store in an array

=end

# def digit_list(num)
#   num.digits.reverse
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end

# p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# def digit_list(num)
#   digits = []
#   loop do
#     num, digit = num.divmod(10)
#     digits.unshift(digit)
#     break if num == 0
#   end
#   digits
# end

# p digit_list(12345) # == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# def digit_list(num)
#   digits = []

#   loop do
#     num, remainder = num.divmod(10)
#     digits.unshift(remainder)
#     break if num == 0
#   end

#   digits
# end

# p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

=begin
input: array
output: print hash elements
rules:
- create a method
- returns an hash that is printed
- count the number of occurences of each element
- case sensitive
key - element - value - count

D
array, hash

A
- initialize an empty hash `result`
- iterate through the `vehicles` array
  - if element is in hash 
    - increment its value by one
  - if element is not in hash
    - add element to hash as key with value as 1
- return `result` hash
  
=end

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(arr)
#   result = {}

#   arr.each do |ele|
#     if result.include?(ele)
#       result[ele] = result[ele] + 1 
#     else   
#       result[ele] = 1
#     end
#   end

#   result.each { |ele, count| puts "#{ele} => #{count}" }
# end

# count_occurrences(vehicles)

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(arr)
#   result = {}

#   arr.uniq.each { |ele| result[ele] = arr.count(ele) }

#   result.each { |ele, count| puts "#{ele} => #{count}" }
# end

# count_occurrences(vehicles)

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
# ]

# def count_occurrences(arr)
#   result = {}

#   arr.each do |ele|
#     ele = ele.downcase
#     if result.include?(ele)
#       result[ele] = result[ele] + 1 
#     else   
#       result[ele] = 1
#     end
#   end

#   result.each { |ele, count| puts "#{ele} => #{count}" }
# end

# count_occurrences(vehicles)

# def count_occurrences(array)
#   occurrences = {}
#   array.uniq.each do |word|
#     word = word.downcase
#     occurrences[word] = array.count { |ele| ele.casecmp?(word) }
#   end
#   occurrences.each { |word, count| puts "#{word} => #{count}" }
# end

# vehicles = [
#   'caR', 'car', 'tRuCk', 'CaR', 'SUV', 'TRUCK',
#   'MOTORcycle', 'motorcycle', 'CAR', 'truck'
# ]

# count_occurrences(vehicles)

# def count_occurrences(array)
#   array.map(&:downcase).tally.each { |key, value| puts "#{key} => #{value}" }
# end

# vehicles = [
#   'caR', 'car', 'tRuCk', 'CaR', 'SUV', 'TRUCK',
#   'MOTORcycle', 'motorcycle', 'CAR', 'truck'
# ]

# count_occurrences(vehicles)

# def reverse_sentence(str)
#   str.split.reverse.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# def reverse_sentence(str)
#   reversed = []
#   words = str.split
#   reversed << words.pop until words.empty?
#   reversed.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# def reverse_sentence(str)
#   reversed = []
#   str.split { |sub_str| reversed.unshift(sub_str) }
#   reversed.join(' ')
# end

# puts reverse_sentence('') == ''
# p reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# def reverse_words(words)
#   words.split.reduce('') do |str, word|
#     str << "#{word.length >= 5 ? word.reverse : word} "
#   end.strip
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin
input: string (at least 1 word)
output: given string (words reversed if 5 or more characters)
rules:
- create a method
- return given string(same object) ?
- 5 or more characters then reverse word
- strings will be only letters and spaces
- spaces only included with more than 1 word present
- words are separated delimited by spaces

arrays, strings

A
- split each word into an array
- iterate through the array
  - if element (string) is >= 5 characters reverse it *mutating
- join the elements and return string

=end

# def reverse_words(str)
#   words = str.split
#   words.each { |word| word.reverse! if word.size >= 5 }
#   words.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# def reverse_words(str)
#   str.split { |word| str.sub!(word, word.reverse) if word.size >= 5 }
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
# puts reverse_words('two double double elbuod elbuod') # fails this edge case

# def reverse_words(str)
#   reversed = []
#   str.split { |word| word.size >= 5 ? reversed << word.reverse : reversed << word }
#   reversed.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
# puts reverse_words('two two double double elbuod elbuod') # fails this edge case

# def reverse_words(str)
#   str.split.each { |word| word.reverse! if word.size >= 5 }.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# def reverse_words(words)
#   words.split.reduce('') do |reversed, word|
#     reversed << "#{word.length >= 5 ? word.reverse : word} "
#   end.strip
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin
input: integer(positive)
output: string (1s and 0s - starting with 1)
rules:
- create a method
- takes an integer
- returns a string
  - string is 1's and 0's starting with 1
- string length = integer argument

D
strings, integers

A
- initialize a new `str`
- iterate integer number of times
  - if even append 1
  - if odd append 0

=end

# def stringy(num)
#   str = ''
#   num.times { |n| str << (n.even? ? '1' : '0') }
#   str
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# # Further exporation (optional 0 starting argument)
# def stringy(num, start = 1)
#   numbers = []
#   num.times { |n| numbers << (n.even? ? start : (start - 1).abs) }
#   numbers.join
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7, 0) == '0101010'

=begin
input: array (of integers)
output: integer (average)
rules:
create a method
takes 1 argument
returns an integer
- the array will never be empty
- the numbers in the array will always be positive
- formula for the average is adding the array and dividing by number in the
arry
question:
what is the definition here for average?
=end

# def average(arr)
#   arr.sum / arr.size
# end

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) #== 25
# puts average([9, 47, 23, 95, 16, 52]) #== 40


=begin
input: integer(salary) and boolean
output: integer
rules:
if boolean is false return 0
if boolean is true return half of salary

=end
=begin
input: integer(positive)
output: integer(sum)
rules:
return the sum of the digits

A
- isolate each digit into an array
- return the sum the digits

=end

# def sum(num)
#   num.digits.sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def sum(num)
#   num.to_s.chars.map(&:to_i).sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# # Unnecessary conversion to a hash for practice
# def sum(num)
#   p num.to_s.chars.tally.keys.map(&:to_i).reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def calulate_bonus(salary, bonus)
#   bonus ? salary / 2 : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
