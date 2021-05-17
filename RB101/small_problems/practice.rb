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

# def display_age(name = "Teddy")
#   name = "Teddy" if name.empty? # == ''
#   puts "#{name} is #{rand(20..200)} years old!"
# end

# display_age
# puts "Give me a name, and I'll give you their age."
# name = gets.chomp
# display_age(name)

=begin
input: integer (length - m) , integer(width - m)
output: string (area)
rules:
-get dimentions
-display area
-convert to ft include in string

D
integer, floats, strings

A
- prompt for input
- calculate area
- convert to ft
- output result string
=end
# SQMETERS_TO_SQFEET = 10.7639
# puts "Enter the length the room in meters:"
# length = gets.to_f

# puts "Enter the width of the room in meters:"
# width = gets.to_f

# area_sq_meters = length * width
# area_sq_feet = (area_sq_meters * SQMETERS_TO_SQFEET).round(2) 

# puts "The area of the room is #{area_sq_meters} square meters \
# (#{area_sq_feet} square feet)."

# # Further Exploration
# SQFEET_TO_SQCENTIMETERS = 929.03
# puts "Enter the length the room in feet:"
# length = gets.to_f

# puts "Enter the width of the room in feet:"
# width = gets.to_f

# sq_feet = length * width
# sq_inches = sq_feet * 144
# sq_centimeters = (sq_feet * SQFEET_TO_SQCENTIMETERS).round(2)

# puts "The area of the room is #{sq_feet} square feet (#{sq_inches} square \
# inches, #{sq_centimeters} square centimeters.)"

# Indentation for multi-line string examples
# puts "The area of the room is thirty five square meters " \
# 	"(thirty million square feet)."

# puts "The area of the room is thirty five square meters \
# (thirty million square feet)."

# puts "The area of the room is thirty five square meters " + \
# 	   "(thirty million square feet)."

# puts "The area of the room is thirty five square meters " \
# 	   "(thirty million square feet)."

# print "What is the bill? "
# bill_amount = gets.to_f

# print "What is the tip percentage? "
# tip_percentage = gets.to_f

# tip = (bill_amount * tip_percentage/100).round(2)
# total = (bill_amount + tip).round(2)

# puts "The tip is $#{tip}"
# puts "The total is #{total}"

# Further Exploration using Kernel#format
# print "What is the bill? "
# bill_amount = gets.to_f

# print "What is the tip percentage? "
# tip_percentage = gets.to_f

# tip = bill_amount * tip_percentage/100
# total = bill_amount + tip

# puts "The tip is #{format('$%.2f', tip)}"
# puts "The total is #{format('$%.2f', total)}"

# print "What is your age? "
# age = gets.to_i

# print "At what age would you like to retire? "
# retire_age = gets.to_i

# year = Time.now.year
# years_til_retirement = retire_age - age
# retire_year = year + years_til_retirement

# puts "It's #{year}. You will retire in #{retire_year}."
# puts "You have only #{years_til_retirement} years of work to go!"

=begin
input: string
output: string
rules:
if the user name ends in ! write in all caps

=end

# def greeting(name)
#   return "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?" if name[-1] == '!'
#   "Hello #{name.capitalize}."
# end

# print "What is your name? "
# name = gets.chomp

# puts greeting(name)

# Further exploration - using #chomp! and #chop!
# print 'What is your name? '
# name = gets.chomp!

# if name[-1] == '!'
#   name = name.upcase.chop!
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# [*1..99].each { |n| puts n if n.odd? }
# (1..99).each { |n| puts n if n.odd? }
# puts (1..99).each.with_object([]) { |n, arr| arr << n if n.odd? }
# (99).times { |n| puts n + 1 if (n + 1).odd? }
# 1.upto(99) { |n| puts n if n.odd? }

# puts [*1..99].select { |n| n.odd? }

# 1.upto(99) { |n| next if n.even?; puts n }

# (1..99).each { |n| puts n if n.even? }

# value = 0
# until value == 99
#   value += 1
#   next if value.odd?
#   puts value
# end

=begin
input: integer, string ('s' or 'p')
output: string (sum or product result)
rules:
take 2 inputs from the user integer, and string (operation)
calculate the operation using the given number
sum - calculate sum of 1 through number
product - calculate product of 1 through number
format the answer in a string

D - strings, integers, range

A
- use a range and calculate the sum (sum method)
- using a range 1 to number calculate the product (product method)
=end

# def sum(num)
#   result = (1..num).sum
#   puts "The sum of the integers between 1 and #{num} is #{result}."
# end

# def product(num)
#   result = (1..num).reduce(:*)
#   puts "The product of the integers between 1 and #{num} is #{result}."
# end

# puts ">> Please enter an integer greater than 0:"
# number = gets.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp

# if choice == 's'
#   sum(number)
# elsif choice == 'p'
#   product(number)
# else
#   "Invalid number or choice."
# end

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name # Alice \n Bob

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name # BOB \n BOB

=begin
Both the `name` and `save_name` variable point to the same string object `'Bob'`
When the mutating method `upcase!` is called on that string object `'Bob'`,
referenced by the variable `name`. That object's value changed to `'BOB'` and
both variables were still pointing to this same object. This is seen when the
object is output with the `puts` method called with the string object
passed in as an argument.
=end

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# puts array2 # Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo

=begin
This outputs the upcase names because the elements in `array1` and in `array2`
reference the same objects. So when the object are mutated with the `upcase!`
method call then that is reflected in both arrays. Arrays are collections of
objects as elements.
=end

=begin
input: 6 integers
output: string message 
rules:
- prompt for a number 6 times
- check if the 6th number appears in the first 5
- output the result as a string
- output the first 5 as an array

D - integers, arrays, strings

A
- initialize a `numbers` variable to an empty arry
- initialize a prompt variable to a prompt string
- create an array with the nth number - 1st 2nd .. 5th or last
 *skip - save last as its own prompt?
- check if last number in array is in the first 5 digits of array
- return the appropriate string
=end

# numbers = []
# nth = %w(1st 2nd 3rd 4th 5th)

# nth.each do |n|
#   puts "==> Enter the #{n} number:"
#   numbers << gets.to_i
# end

# puts "==> Enter the last number:"
# last = gets.to_i

# if numbers.include?(last)
#   puts "The number #{last} appears in #{numbers}."
# else
#   puts "The number #{last} does not appear in #{numbers}."
# end

=begin
input: 2 positive integers
output: 6 strings containing 6 different operations
rules:
- don't need to validate the input
- use the prompts from the example

D - integers, strings

A
- prompt for the 2 inputs and save as seperate variables
- output the results for the 6 operations
=end

# puts "==> Enter the first number:"
# num1 = gets.to_i
# puts "==> Enter the second the number:"
# num2 = gets.to_i

# puts "==> #{num1} + #{num1} = #{num1 + num2}"
# puts "==> #{num1} - #{num1} = #{num1 - num2}"
# puts "==> #{num1} * #{num1} = #{num1 * num2}"
# puts "==> #{num1} / #{num1} = #{num1 / num2}"
# puts "==> #{num1} % #{num1} = #{num1 % num2}"
# puts "==> #{num1} ** #{num1} = #{num1**num2}"

# print "Please write word or multiple words: "
# words = gets.chomp
# puts "There are #{words.delete(' ').size} characters in \"#{words}\"."

=begin
input: 2 numbers (arguments)
output: returns integer
rules:
- create a method
- takes 2 arguments
- arguments are integers in the example
- multiply them together
- return the result
question:
is input validation necessary?

D
integers

A
- return the product
=end

# def multiply(num1, num2)
#   num1 * num2
# end

# p multiply(5, 3) == 15
# p multiply([5], 3)  # [5, 5, 5]

# def multiply(*args)
#   args.reduce(:*)
# end

# p multiply(5, 3) == 15
# p multiply([5], 3)  # [5, 5, 5]

# p square(5) #== 25
# p square(-8) #== 64

# def multiply(arr)
#   arr.reduce(:*)
# end

# def square(num, n_power = 2)
#   multiply([num] * n_power)
# end

# p square(5, 3) #== 25
# p square(-8, 3) #== 64

=begin
input: 2 arguments, booleans
output: boolean
rules:
if false true or true false return true
if false false or true true return false
- create a xor method

D
booleans

A
- check if booleans are opposite values of each other
- they should be different values
=end

# def xor?(boo1, boo2)
#   !boo1 != !boo2
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

=begin
input: array
output: array
rules:
- create a method
- method takes an array as an argument
- returns a new array with every other element
- add the first element
- empty arrays return an empty array

questions:
can it return a new array? -not specified - assuming yes

D
arrays

A
- create an empty array - odds
- iterate through the argument array with index
- if index even add element to new array
- return the new array
=end

# def oddities(arr)
#   odds = []
#   arr.each.with_index do |ele, index|
#     odds << ele if index.even?
#   end
#   odds
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []


# def oddities2(arr)
#   odds = []
#   arr.each.with_index do |ele, index|
#     odds << ele if index.odd?
#   end
#   odds
# end

# p oddities2([2, 3, 4, 5, 6]) == [3, 5]
# p oddities2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities2(['abc', 'def']) == ['def']
# p oddities2([123]) == []
# p oddities2([]) == []

# def oddities2(arr)
#   index = 0
#   arr.partition do |ele|
#     index += 1
#     index.odd?
#   end.last
# end

# p oddities2([2, 3, 4, 5, 6]) #== [3, 5]
# p oddities2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities2(['abc', 'def']) == ['def']
# p oddities2([123]) == []
# p oddities2([]) == []

# def oddities(arr)
#   arr.select.with_index { |ele, index| index.even? }  
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

# def oddities(arr)
#   arr.each_slice(2).map(&:first)  
# end

# p oddities([2, 3, 4, 5, 6]) # == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

# def oddities(arr)
#   (0..arr.size - 1).step(2).map { |index| arr[index] } 
# end

# p oddities([2, 3, 4, 5, 6]) # == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

=begin
input: string
output: boolean
rules:
- create a method
- return true if the string is the same forward and backwords
- case sensitive
- every character in the string counts

D
strings, booleans

A
- if the string is the same backwards as the string argument return true
=end

# def palindrome?(str)
#   str == str.reverse
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# def palindrome?(arr_or_str)
#   arr_or_str == arr_or_str.reverse
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?(%w(madam i'm adam)) == false # (all characters matter)
# p palindrome?('356653'.chars) == true

=begin
input: string
output: boolean
rules:
- return true if argument string is a palindrome
- count lower or uppercase as the same characters
- ignore all non-alphanumeric characters - only abc123 ...
- can use the previous palindrome? method

D - strings, arrays?

A
- initialize a new string
- update this string to include only alpha numeric
- modify this string to be only uppercase
- return true if it is the same forward as backwords
=end

# def palindrome?(str)
#   str == str.reverse
# end

# def real_palindrome?(str)
#   filtered = str.upcase.delete('^A-Z0-9')
#   palindrome?(filtered)
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

=begin
input: integer
output: boolean
rules:
return true if the integer is palindromic
- palindromic is the same forwards and backwords

A
- split the number into an array of digits
- compare that array with an array of the digits backwards
=end

# def palindromic_number?(num)
#   num.digits == num.digits.reverse
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true
# p palindromic_number?(00500) == true
