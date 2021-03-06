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

=begin
input: 2 strings
output: string
rules:
- create a method
- takes 2 arguments
- returns shorter argument + longer + shorter
- can assume strings are different lengths
D
strings, arrays

A
- determine the longest string
- combine shortest + longest + shortest
=end

# def short_long_short(str1, str2)
#   short, long = [str1, str2].sort_by { |str| str.size }
#   short + long + short
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# def short_long_short(str1, str2)
#   str1.size > str2.size ? str2.concat(str1, str2) : str1.concat(str2, str1)
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

=begin
input: integer (year)
output: string (century)
rules:
- create a method
- return value should be a string ending with the proper suffix
- years begin with 01 - 1901-2000 - 20th
questions:
are we dealing only with positive years? yes - based on test cases

D
integers, strings, arrays

A
- convert the integer into the century
- add the suffix based on the last digit

- initialize a hash of suffixes for each digit `suffix`
- divide argument integer by 100 with remainder
  - if remainder is greater than 0 add 1 more century
=end

# SUFFIX = {
#   0 => "th", 1 => "st", 2 => "nd", 3 => "rd", 4 => "th",
#   5 => "th", 6 => "th", 7 => "th", 8 => "th", 9 => "th"
# }

# def century(year)
#   century, remainder = year.divmod(100)
#   century += 1 if remainder > 0
#   century = century.to_s
#   century + get_suffix(century)
# end

# def get_suffix(str)
#   return "th" if %w(11 12 13).include?(str[-2..-1])
#   SUFFIX[str[-1].to_i]
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

=begin
input: integer(years) positive
output: boolean
rules:
- create a method
- returns true if it is a leap year
- returns false if not a leap year
- leap year is evenly divisible by 4
  - unless it is divisble by 100
    - unless it is divisible by 400

D
- integers, booleans

A
- if it is divisible by 400 - return true
- if it divisible by 4 and NOT divible by 100 return true
- else return false
=end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 4 == 0 && year % 100 != 0
#     true
#   else
#     false
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

# def leap_year?(year)
#   if year % 4 == 0

#     if year % 100 == 0

#       if year % 400 == 0
#         return true
#       else
#         return false
#       end

#     end

#     true
#   else
#     false
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

# def leap_year?(year)
#   if year < 1752
#     year % 4 == 0
#   else
#     (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true

=begin
input: integer
output: integer 
rules:
- write a method
- find all multiples of 3 and 5 between 1 and argument (inclusively)
- calculate the sum of those multiples
- assume number argument is a positive integer
- number can be included as a multiple
- only count unique multipes (15 is not counted twice)
questions:

D
integers, arrays

A
- initialize an empty array `multiples`
- find all the multiples of 3 between 1 and given `num`
  - append them to `multiples` array
- find all the multiples of 5 between 1 and given `num`
  - append multiples to `multiples` array
- filter for just unique mutliples in array
- find the sum and return that number
=end

# def multisum(num)
#   multiples = []
#   (1..num).each { |n| multiples << n if n % 3 == 0 || n % 5 == 0 }
#   multiples.sum
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# def multisum(num)
#   (1..num).select { |n| n % 3 == 0 || n % 5 == 0 }.sum
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# def multisum(num)
#   sum = 0
#   1.upto(num) { |n| sum += n if n % 3 == 0 || n % 5 == 0 }
#   sum
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

=begin
input: array (of numbers)
output: array( running total of numbers elements)
rules:
- create a method
- given an array of numbers(integers?)
- return an array with each element a running total from original

questions:
do we need to return a new array or the same array? - either -not specified
are all numbers integers? - from examples yes

D
arrays, integers

A
- initilie an empty array `totals`
- initialize a variable `sum` to 0
- iterate through the argument array
  - add the current element to sum
  - append sum to a new array
- return totals array
=end

# def running_total(arr)
#   sum = 0
#   totals = []

#   arr.each do |num|
#     sum += num
#     totals << sum
#   end

#   totals
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

# def running_total(arr)
#   totals = []

#   arr.reduce(0) do |sum, n|
#     sum += n
#     totals << sum
#     sum
#   end

#   totals
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

=begin
input: string (number)
output: integer
rules:
- convert the string to an integer
- do not use any of the standard coversion methods (to_i, integer)
- don't worry about - + OR invalid characters for now

D
strings, integers, arrays?

A
- create a DIGITS hash of the strings with corresponding digit number value
- convert the string the an array of single characters

=end
# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(str)
#   integer = 0
#   digits = str.chars.map { |char| DIGITS[char] }
#   digits.each do |num|
#     integer = 10 * integer + num
#   end
#   integer
# end

# p string_to_integer('4321') #== 4321
# p string_to_integer('570') #== 570

# def hexadecimal_to_integer(str)
#   Integer(str, 16)
# end

# p hexadecimal_to_integer('4D9f') == 19871

=begin
input: string (number with a - or + or no sign -positive in front)
output: integer - number version of string with - sign if negative
rules:
- do not use to_i or #Integer
- may use the method from the previous exercise

A
- use previous method to convert string to a number
- remove the leading sign if present
  - multiply by -1 if removed a - sign
=end

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(str)
#   integer = 0
#   digits = str.chars.map { |char| DIGITS[char] }
#   digits.each do |num|
#     integer = 10 * integer + num
#   end
#   integer
# end

# def string_to_signed_integer(str)
#   sign = 1

#   if str[0] == '-'
#     sign = -1
#     str[0] = ''
#   elsif str[0] == '+'
#     str[0] = ''
#   end

#   sign * string_to_integer(str)
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

=begin
input: integer
output: string version of integer
rules:
- do not use to_s String() or Kernel#format methods
- convert the integer to a string
- create a method

D
integers, strings, arrays, hash

A
- create an array and join the array together

- create a hash with numbers as keys and string version as values
- split the digits into an array
  - initialize an empty array
  - take each digit and append to an empty array
    - use modulus operator
- convert each digit to the value in the conversion hash * #join skips this
- return joined array
=end

# def integer_to_string(num)
#   num.digits.reverse.join
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

# def integer_to_string(num)
#   arr = []

#   loop do
#     num, digit = num.divmod(10)
#     arr.unshift(digit)
#     break if num == 0
#   end

#   arr.join
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

=begin
input: integer (with sign)
output: string with + - sign or no sign for zero
rules:
- convert the integer to a string
- add the sign as a prefix to the string
- 0 has no sign
- can use the previous method, same rules apply

D
integers, strings

A
- explicitly return 0 for the 0 case
- if integer is negative prepend a `-`
  - otherwise prepend a +

=end

# def integer_to_string(num)
#   arr = []
#   loop do
#     num, digit = num.divmod(10)
#     arr.unshift(digit)
#     break if num == 0
#   end
#   arr.join
# end

# def signed_integer_to_string(num)
#   return '0' if num == 0
#   sign = num.positive? ? '+' : '-'
#   sign + integer_to_string(num.abs)
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

# Further exploration - refactor so not as redundant
# def signed_integer_to_string(number)
#   sign =
#     case number <=> 0
#     when -1 then '-'
#     when +1 then '+'
#     else         return '0'
#     end

#   sign + integer_to_string(number.abs)
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

=begin
input: string
output: integer (ASCII total)
rules:
- check the ASCII value of each character
- find the sum
- may use #ord

A
- iterate over every character
- find the current value of each character
- add the sum
=end

# def ascii_value(str)
#   str.chars.reduce(0) { |sum, char| sum + char.ord }
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

# def ascii_value(str)
#   str.chars.map(&:ord).sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

=begin
input: integer
output: string (hh:mm)
rules:
- negative integer are before midnight
- positive integers are after midnight
- can not use Date and Time classes
- integer is given in minutes (1440 minutes in 24 hours)

D
integers, strings

A
- start with the time minutes
  - create a positve number
- find hours
- find the minutes
- convert to a string
- return the string
=end

# def time_of_day(num)
#   minutes = num % 1440
#   hours, minutes = minutes.divmod(60)
#   format('%02d:%02d', hours, minutes)
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"

=begin
input: string (hh:00 - time of day)
output: integer (minutes 0..1439)
rules:
- create 2 methods
- one calculates before midnight
- one after midnight
- can be given '24:00' is an example

D
strings, integers

A
after_midnight
- split the string at the `:` and form an array
- multiply the hours by 60
- add the minutes
- if time is 24:00 return 0
- return the sum

before midnight
- split the string at the : 
- convert to integers and multiply hours by 60
- add the minutes
- subtract from 1440
- return number
=end

# def after_midnight(time)
#   hours, minutes = time.split(':').map(&:to_i)
#   ((hours * 60) + minutes) % 1440
# end

# def before_midnight(time)
#   return 0 if time == '24:00' || time == '00:00'
#   hours, minutes = time.split(':').map(&:to_i)
#   1440 - ((hours * 60) + minutes)
# end

# p after_midnight('00:00') #== 0
# p before_midnight('00:00') #== 0
# p after_midnight('12:34') #== 754
# p before_midnight('12:34') #== 686
# p after_midnight('24:00') #== 0
# p before_midnight('24:00') #== 0

=begin
input: string of words separated by spaces
output: string first and last letters of words swapped
rules:
- assume every word is at least 1 letter - strings at least 1 word
- swap the first and last letter of the words
- words are delimited by spaces
- strings will contain only words and spaces
questions:
Do we need to return the same string? or a new string?

D
strings, arrays

A
- split string into an array at the spaces
- iterate through the array
  - swap the first and last letter of each word
- return the string
=end

# def swap(str)
#   str.split.map do |word|
#     word[0], word[-1] = word[-1], word[0]
#     word
#   end.join(' ')
# end

# p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

=begin
input: string (lowercase)
output: string (non alphabetic characters replaced)
rules:
- mutate the string
- non-alphbetic characters are replaced by spaces
- no multiple spaces - just 1

questions:
do you need to return the same string object passed as an argument? yes-

D
strings, arrays

A
- replace the non-alphabetic characters
- remove all extra spaces (only 1 consecutive)

- initialize a variable `clearn` as an empty array
- split the string by each character into an array save as variable
- iterate through this array
  - initialize a variable `previous` to first character string
  - if character is not alphabetic (method)
    - change current character to a space
    - if previous character is also a space change current to ''
  - prevous reassigned to current character

- create a method to return true if character is alphabetic else false
  - create an array of characters a-z
  - if character argument is included? return true else false
=end

# def cleanup(str)
#   clean = []
#   chars = str.chars
#   previous = chars.first

#   chars.each do |char|
#     if alphabetic?(char)
#       clean << char
#       previous = char
#     elsif previous == ' '
#       clean << ''
#     else
#       clean << ' '
#       previous = ' '
#     end
#   end

#   clean.join
# end

# def alphabetic?(char)
#   alphabet = [*'a'..'z']
#   alphabet.include?(char)
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

# def cleanup(str)
#   clean = []
#   str.chars.each do |char|
#     if alphabetic?(char)
#       clean << char
#     else
#       clean << ' '
#     end
#   end
#   clean.join.squeeze
# end

# def alphabetic?(char)
#   alphabet = [*'a'..'z']
#   alphabet.include?(char)
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

# def cleanup(str)
#   str.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

# def cleanup(str)
#   clean = []

#   str.chars.each do |char|
#     if alphabetic?(char)
#       clean << char
#     else
#       clean << ' ' unless clean.last == ' '
#     end
#   end

#   clean.join
# end

# def alphabetic?(char)
#   alphabet = [*'a'..'z']
#   alphabet.include?(char)
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

=begin
input: string
output: hash (keys: wordsize values: numbers of words of those size)
rules:
- given a string of at least 1 ore more space separated words
- return a hash with with the word size and count of words
- empty strings return an empty hash

questions:
do the hash need to be sorted in a certain order? - just pass the test cases

D
strings, hash, arrays

A
- split the string over the spaces into a array
- iterate over this array
  - count the number of letters of each word in the array
  - save this as a new array `word_size`
- initialize an empty hash `result`
- iterate through `word_size`
  - if the current element is a key in `result` hash
    - increment hash value by 1
  - else add element to hash with a value of 1
- return `result` hash 
=end

# def word_sizes(str)
#   str.split.map(&:size).tally
# end

# p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

# def word_sizes(str)
#   result = {}
#   word_size = str.split.map(&:size)

#   word_size.each do |chars|
#     if result.include?(chars)
#       result[chars] += 1
#     else
#       result[chars] = 1
#     end
#   end

#   result
# end

# p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

# def word_sizes(str)
#   result = Hash.new(0)
#   str.split { |word| result[word.size] += 1 }
#   result
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

=begin
letter_count helper method
input: string
output: integer - count of letter characters only
rules:
- exclude non-letters for word size
questions:
- do numbers count? - no

D
strings, integers 

A
- remove the non-letter characters
- count the string
=end

# ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

# def word_sizes(str)
#   result = Hash.new(0)
#   str.split { |word| result[letter_count(word)] += 1 }
#   result
# end

# def letter_count(str)
#   str.delete('^a-zA-Z').size
# end

# def letter_count(str)
#   count = 0
#   str.chars.each { |char| count += 1 if ALPHABET.include?(char) }
#   count
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}

=begin
input: array (of integers 0 - 19)
output: array (sorted by english words for each number)
rules:
- array will be any length
- sort based on the string value of the numbers

questions:

D
array, integers

A
- create an array as the key, use index as the integer, element as string
- sort each integer by the corresponding string element
=end

# NUMBER_STRINGS = %w(
#   zero one two three four five six seven eight nine ten
#   eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen
# )

# def alphabetic_number_sort(arr)
#   arr.sort_by { |num| NUMBER_STRINGS[num] }
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
# p alphabetic_number_sort([3, 5, 7, 19, 11, 2, 1])

# NUMBER_STRINGS = %w(
#   zero one two three four five six seven eight nine ten
#   eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen
# )

# # using #sort only instead of #sort_by
# def alphabetic_number_sort(arr)
#   arr.map { |n| NUMBER_STRINGS[n] }.sort.map { |str| NUMBER_STRINGS.index(str) }
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
# p alphabetic_number_sort([3, 5, 7, 19, 11, 2, 1])

=begin
input: string
output: return new string
- works with any characters
- return a new string
- all consecutive duplicate characters are removed/collapsed
- can't use the #squeeze or #squeeze!

D
strings

A
- initialize an empty str `crunched`
- iterate through each character in the string argument
- append it to `crunched` string
  - unless the last character of crunched is the same
- return crunched
=end

# def crunch(str)
#   crunched = ''
#   str.each_char do |char|
#     crunched << char unless crunched[-1] == char
#   end
#   crunched
# end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

=begin
A
using index value
- initialize variable index to 0
- initialize an empty string `crunched`
- loop through the string
  - if the current index character is not equal to the next index
    - next index is index + 1
  - append the character at string index
  - increment index by 1
  - break if index == string size
- return `crunched`
=end

# def crunch(str)
#   index = 0
#   crunched = ''
#   loop do
#     crunched << str[index] unless str[index] == str[index + 1]
#     index += 1
#     break if index >= str.size
#   end
#   crunched
# end

# p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

=begin
input: string
output: strings with string formatted within the box
rules:
- print the string within the box
- assume the string always fits in terminal window(don't worry about wrapping)

D
strings

A
- output 5 different lines
- initialize a variable to the string size
- use that size to pad the lines with space or -

=end

# def print_in_box(str)
#   padding = str.size > 76 ? 76 : str.size
#   str = str[0..73] + '..' if str.size > 76

#   puts "+-#{'-' * padding}-+"
#   puts "| #{' ' * padding} |"
#   puts "| #{str} |"
#   puts "| #{' ' * padding} |"
#   puts "+-#{'-' * padding}-+"
# end

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# # +--+
# # |  |
# # |  |
# # |  |
# # +--+
# print_in_box('To boldly go where no one has gone before and to boldly go where no one has gone before')

=begin
input: float or integer
output: string (degrees°mm'ss")
rules:
- convert the number to degrees minutes seconds
- 60 minutes in a degree, 60 seconds in a minute
- format the answer as a string ddd°mm'ss"
- use a placeholder 0 for single digits minutes and seconds

D
integer/float, strings

A
- isolate the decimal place * modulus 1
- check how many 60ths in decimal
- check how many 360ths in decimal
- format to the specified string
- return string

=end

# Further exploration included:
# DEGREE = "\xC2\xB0"

# def dms(num)
#   num %= 360
#   degrees, remainder = num.divmod(1)
#   minutes, remainder = (remainder * (60)).round(9).divmod(1)
#   seconds = (remainder * 60).round
#   format("%d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
# end

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# p dms(400) == %(40°00'00")
# p dms(-40) == %(320°00'00")
# p dms(-420) == %(300°00'00")

=begin
input: array
output: array
rules:
- given an array of strings
- return an array with the vowels removed from the strings
- delete vowels regardless of case - both a and A are deleted
questions:
Do we need to return the same string?

D
arrays, strings

A
- iterate through each word
- remove the vowels in each word - destructively
=end

# def remove_vowels(arr)
#   arr.each { |word| word.delete!('aeiouAEIOU') }
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# def remove_vowels(arr)
#   arr.map { |word| word.delete('aeiouAEIOU') }
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

=begin
input: intger (representing the number of digits)
output: integer (first fib number that has argument number of digits)
rules:
- fibonacci number is 1, 1, 2, 3, 5, 8 etc.
- fibonacci number starts with an index of 1
- assume that the argument is always greater equal to 2

D
integers

A
- find the fibonacci number in sequence
- stop when fibonacci number is equal in length to the argument

method to find fibonacci
- num1 is 1
- num2 is 1
- add num1 and num2
- num1 = num2 and num2 is equal to sum
- 
=end

# def find_fibonacci_index_by_length(digits_size)
#   num1 = 1
#   num2 = 1
#   index = 1
#   while num1.digits.size != digits_size
#     num1, num2 = num2, (num1 + num2)
#     index += 1
#   end
#   index
# end

# p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

# def find_fibonacci_index_by_length(digits_size)
#   num1 = 1
#   num2 = 1
#   index = 1

#   loop do
#     num1, num2 = num2, (num1 + num2)
#     index += 1
#     break if num1.to_s.size >= digits_size
#   end

#   index
# end

# p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

=begin
input: array
output: return the same array with elements reverse
- reverse the elements of the array destructively
- do not use the reverse or reverse! built in method

D
arrays

A
- array size times iterate through the array
- swap the first element with the last
- swap the element at index 2 with index -2
- continue until in the middle of the array
=end

# def reverse!(arr)
#   return arr if arr.empty?
#   index_1 = 0
#   index_2 = -1
#   loop do
#     arr[index_1], arr[index_2] = arr[index_2], arr[index_1]
#     index_1 += 1
#     index_2 -= 1
#     break if index_1 >= arr.size / 2
#   end
#   arr
# end

# list = [1,2,3,4]
# result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# p list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# p list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# p list = []
# p reverse!(list) == [] # true
# p list == [] # true

# def reverse!(arr)
#   (arr.size / 2).times do |index| 
#     arr[index], arr[(-index - 1)] = arr[(-index - 1)], arr[index]
#   end
#   arr
# end

# list = [1,2,3,4]
# result = reverse!(list)
# p result #== [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# p list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# p list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# p list = []
# p reverse!(list) == [] # true
# p list == [] # true

=begin
input: array
output: return a new array (reversed)
rules:
- like the previous exercise but return a new array
- do not mutate the original array
- do not use reverse or reverse! or your previous created method

D - arrays

A
- initialize a variable `reversed` to an empty array
- iterate through argument array
  - prepend each element to `reversed`

=end

# def reverse(arr)
#   reversed = []
#   arr.each { |ele| reversed.unshift(ele) }
#   reversed
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true

# def reverse(arr)
#   arr.each_with_object([]) { |ele, reversed_arr | reversed_arr.unshift(ele) }
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true

# def reverse(arr)
#   arr.reduce([]) { |new_arr, ele| new_arr.unshift(ele) }
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true

# def merge(arr1, arr2)
#   arr1.+(arr2).uniq
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=begin
input: array
output: array with 2 sub arrays
rules:
- first sub array contains the first half
- second sub array contains the second half of array elements
- if array argument is odd put the middle element in the first array
- empty arrays returns an array of 2 sub-arrays
questions:
- can the argument array be mutated?
D
arrays

A
- initialize a variable to an array
- reference the indices to place arrays in sub arrays

- initialize a variable `sub_arr` to an empty array
- initialize a variable `half` to half the array size e.g. 4 - 2 5 - 2 1 - 0
- if arr size is 1 
  - return [[arr], []]
- if arr size is odd
  - append first half
  - append second half
- if arr size is even
  - append first half
  - append second half
- if arr size is 0
  - return [[], []]
=end

# def halvsies(arr)
#   sub_arr = []
#   half = (arr.size / 2.0).ceil
#   sub_arr << arr[0..(half - 1)]
#   sub_arr << arr[half..-1]
#   sub_arr
# end

# p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
# p halvsies([5]) #== [[5], []]
# p halvsies([]) == [[], []]

# def halvsies(arr)
#   sub_arr = []
#   half = arr.size / 2

#   if arr.size == 1
#     sub_arr = [arr, []]
#   elsif arr.size.odd?
#     sub_arr << arr[0..half]
#     sub_arr << arr[-half..-1]
#   else
#     sub_arr << arr[0...half]
#     sub_arr << arr[-half..-1]
#   end

#   sub_arr
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# def halvsies(arr)
#   return [[], []] if arr.size == 0
#   return [arr, []] if arr.size == 1
#   arr.each_slice((arr.size / 2.0).ceil).to_a
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# def halvsies(arr)
#   sub_arr = [[]]
#   half = (arr.size / 2.0).round
#   (half).times { sub_arr[0] << arr.shift }
#   sub_arr << arr
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# def halvsies(arr)
#   middle = (arr.size / 2.0).ceil
#   first = arr.slice(0, middle)
#   last = arr.slice(middle, (arr.size - middle))
#   [first, last]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# student solution
# def halvsies(arr)
#   mid = (arr.size / 2.0).ceil
#   [arr[0...mid], arr[mid..-1]]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# def halvsies(array)
#   half = array.size.divmod(2)
#   [] << array[0, half.sum] << array[half.sum, half[0]]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

=begin
P
input: array
output: integer (duplicate number)
rules
explicit:
- find the duplicate number in the array
- every number occurs once except 1
implicit:
questions:
will the values always be integers? - use test cases provided

D
arrays

A
- count every occurence of each array element
- if element is counted twice return element

- filter out non - unique elements * #uniq
- compare the filtered array to the non-filtered by subtracting elements
=end

# def find_dup(arr)
#   arr.tally.key(2)
# end

# p find_dup([1, 5, 3, 1]) #== 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) #== 73

# def find_dup(arr)
#   no_dup = arr.uniq
#   arr.each do |ele|
#     if no_dup.include?(ele)
#       no_dup.delete(ele)
#     else
#       return ele
#     end
#   end
# end

# p find_dup([1, 5, 3, 1]) #== 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) #== 73

# def find_dup(arr)
#   arr.each { |ele| return ele if arr.count(ele) == 2 }
# end

# p find_dup([1, 5, 3, 1]) #== 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) #== 73

# # Student solution
# def find_dup(arr)
#   arr.sum - arr.uniq.sum
# end

# p find_dup([1, 5, 3, 1]) #== 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) #== 73

=begin
P
input: array, value(to search for)
output: boolean
rules
explicit:
- return true if value is in array
- return false if it is not
- may not use the Array#include? method
implicit:
- array can contain different data types

D
arrays, booleans

A
- iterate through the array
  - if element == value
  - return true
  - else return false
=end

# def include?(arr, value)
#   arr.each do |ele|
#     return true if ele == value
#   end
#   false
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

# def include?(arr, value)
#   arr.select { |ele| ele == value }.size > 0
# end

# p include?([1,2,3,4,5], 3) #== true
# p include?([1,2,3,4,5], 6) #== false
# p include?([], 3) #== false
# p include?([nil], nil) #== true
# p include?([], nil)# == false

# def include?(arr, value)
#   !!arr.index(value)
# end

# p include?([1,2,3,4,5], 3) #== true
# p include?([1,2,3,4,5], 6) #== false
# p include?([], 3) #== false
# p include?([nil], nil) #== true
# p include?([], nil)# == false

# def include?(arr, value)
#   arr.count(value) >= 1
# end

# p include?([1,2,3,4,5], 3) #== true
# p include?([1,2,3,4,5], 6) #== false
# p include?([], 3) #== false
# p include?([nil], nil) #== true
# p include?([], nil)# == false

=begin
P
input: integer (positive)
output: strings (forming a triangle)
rules
explicit:
- create a right triangle to display
- each side has n stars
- the stars are alligned on the right side
- hypotenuse is on the lower left and upper right
implicit:
- format with spaces

D 
integers, strings

A
- initialize a variable `star_count` as 1
- create a loop
  - print a line with spaces equal to n - star_count
  - increment star_count by 1
  - break if start_count == n
=end

# def triangle(n)
#   star_count = 1
#   loop do
#     puts "#{' ' * (n - star_count)}#{'*' * star_count}"
#     break if star_count == n
#     star_count += 1
#   end
# end

# def triangle(n)
#   star_count = 1
#   while star_count <= n
#     puts "#{' ' * (n - star_count)}#{'*' * star_count}"
#     star_count += 1
#   end
# end

# triangle(5)

# #     *
# #    **
# #   ***
# #  ****
# # *****

# triangle(9)

# #         *
# #        **
# #       ***
# #      ****
# #     *****
# #    ******
# #   *******
# #  ********
# # *********

# Upside down for Further Exploration
# def triangle(n)
#   star_count = n
#   while star_count > 0
#     puts "#{' ' * (n - star_count)}#{'*' * star_count}"
#     star_count -= 1
#   end
# end

# triangle(5)
# triangle(9)

=begin
P
input: 2 arrays
output: single array (values interleaved)
rules
explicit:
- combine 2 arrays
- alternate each element 
- both arrays are non-empty
- each array is the same size
- create a method
implicit:
- starting with the element from the first array
- arrays will contain different data types

D
arrays

A
- merge the arrays then flatten

- initialize a variable to an empty array
- loop through the array size times
  - append the element at index 0 for arr1
  - append the element at index 0 for arr2
  - increment index by 1
- return the initialized array
=end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

# def interleave(arr1, arr2)
#   mixed_arr = []
#   (arr1.size).times do |index|
#     mixed_arr << arr1[index]
#     mixed_arr << arr2[index]
#   end
#   mixed_arr
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

=begin
P
input: string
output: hash (with 3 keys and the count)
rules
explicit:
- count the number of lowercase, uppercase, and neither characters
- key is the description (symbols)
- value is the count (integers)
implicit:
- empty strings return 0 for all values
- neither are symbols that don't have a lower or uppercase version

D
strings, hash

A
- iterate through each character in the string
- check if characters is lowercase/uppercase/neither
  - increment the corresponding key by 1

- initialize a variable to an empty hash with a default value of 0
- create 2 arrays to see if characters are included in it (all lower, all caps)

=end

# def letter_case_count(str)
#   cases = { lowercase: 0, uppercase: 0, neither: 0 }
#   lower = [*'a'..'z']
#   upper = [*'A'..'Z']

#   str.each_char do |char|
#     if lower.include?(char)
#       cases[:lowercase] += 1
#     elsif upper.include?(char)
#       cases[:uppercase] += 1
#     else
#       cases[:neither] += 1
#     end
#   end
  
#   cases
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# def letter_case_count(str)
#   cases = { lowercase: 0, uppercase: 0, neither: 0 }

#   str.each_char do |char|
#     if char.swapcase == char
#       cases[:neither] += 1
#     elsif char.upcase == char
#       cases[:uppercase] += 1
#     else
#       cases[:lowercase] += 1
#     end
#   end
  
#   cases
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# def letter_case_count(str)
#   result = {}
#   chars = str.chars
#   result[:lowercase] = chars.count { |char| char =~ /[a-z]/ }
#   result[:uppercase] = chars.count { |char| char =~ /[A-Z]/ }
#   result[:neither]   = chars.count { |char| char =~ /[^a-zA-z]/ }
#   result
# end

# p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin
input: string
output: new string
rules:
explicit:
- return a new string
- new string will have the first character of every word capitalized
- words are definied as any sequence of non-blank characters
implicit:
- non letters like " are left as is with the other letters lowercase
questions:
do we need to create any additional test cases?

D
arrays, strings

A
- seperate string into an array of words
- capitalize each word
- return a new string

=end

# def word_cap(str)
#   str.split.map(&:capitalize).join(' ')
# end

# p word_cap('four score and seven') #== 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin
A
- initialize a variable `capitalized` to an empty string 
- loop through an array of each character
  - if capitalized is empty 
  or the previous character was a space
    - append capital letter to `capitalized`
  - else append the lowercase character to `capitalized`
- return `capitalized` string
=end

# Further exploration - without using String#capitalize
# def word_cap(str)
#   capitalized = ''
#   str.each_char do |char|
#     if capitalized.empty? || capitalized[-1] == ' '
#       capitalized << char.upcase
#     else
#       capitalized << char.downcase
#     end
#   end
#   capitalized
# end

# p word_cap('four score and seven') #== 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin
Further exploration - without using String#capitalize
A
- create an array of words in str
- iterate through the array
  - for each word used upcase on the first character
  - use downcase on every other letter
- join array together
=end

# def word_cap(str)
#   str.split.map do |word|
#     word[0] = word[0].upcase
#     word[1..-1] = word[1..-1].downcase
#     word
#   end.join(' ')
# end

# p word_cap('four score and seven') #== 'Four Score And Seven'
# p word_cap('the javaScript language') #== 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin
P
input: string
output: string (case swapped)
rules
explicit:
- lowercase replaced with uppercase version
- uppercase letter replaced with lowercase version
- do not use the #swapcase method
implicit:
- non letter characters are unchanged - stays -

D
strings, arrays?

A
- iterate through each character of the string
- determine if the letter is capital or lowercase
  - if capital change to lowercase
  - if lowercase change to capital

- to determine case if downcase character == char - is downcased (or neither)
- if upcase character == char - is capital or neither
- using down or upcase on non letter won't change anything
=end

# def swapcase(str)
#   str.chars.map do |char|
#     if char.upcase == char
#       char.downcase
#     else 
#       char.upcase
#     end
#   end.join
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# # Refactor
# def swapcase(str)
#   str.chars.map do |char| 
#     char.upcase == char ? char.downcase : char.upcase
#   end.join
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=begin
P
input: string
output: string (staggered capitilization)
rules
explicit:
- capitalize every other character - lowercase every other
- do not change non letter characters
- every character counts as an alternate even if it isn't changed
implicit:
- spaces are counted as characters
- start by capitalizing the first character then downcase...etc
- return a new string so may or may not mutate original
questions:
return a new string ? yes

D
strings, arrays?

A
- split the string into an array of characters
- iterate over each character in the array with index
  - if index is even capitalize character
  - if index is odd downcase character
- join the array together and return new string
=end

# def staggered_case(str)
#   str.chars.map.with_index do |char, index|
#     index.even? ? char.upcase : char.downcase
#   end.join
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# def staggered_case(str, toggle = false)
#   str.chars.map do |char|
#     toggle = !toggle
#     toggle ? char.upcase : char.downcase
#   end.join
# end

# p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# # Student solution
# def staggered_case(str)
#   str.scan(/..?/).map(&:capitalize).join
# end

# # Student solution
# def staggered_case(str, first = :upcase)
#   second = first == :upcase ? :downcase : :upcase
#   str.gsub(/..?/) { |pair| pair[0].send(first) + pair[1].to_s.send(second) }
# end

# p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
P
input: string
output: new string (every other letter capitalized)
rules
explicit:
- do not count non-letters in the toggle count
- only toggle letter characters
- same rules as previous problem

D
strings, arrays

A
- add a conditional check if the current character is a letter or not
  - if letter swap the toggle 
  - else do not swap the toggle

- initialize a `new_str` variable to an empty string
- initialize a `upper_char` toggle
- iterate through an array of each character in str
  - if upper_char is true 
    - append a capital character
  - else
    - append a lowercase character
  
=end

# def staggered_case(str)
#   new_str = ''
#   upper_char = true
#   str.each_char do |char|
#     new_str << (upper_char ? char.upcase : char.downcase)
#     upper_char = !upper_char if char =~ /[a-z]/i
#   end
#   new_str
# end

# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# def staggered_case(str, count_non_alpha = false)
#   new_str = ''
#   upper_char = true
#   str.each_char do |char|
#     new_str << (upper_char ? char.upcase : char.downcase)
#     upper_char = !upper_char if char =~ /[a-z]/i || count_non_alpha
#   end
#   new_str
# end

# p staggered_case('I Love Launch School!', true) #== 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# def show_multiplicative_average(arr)
#   result = arr.reduce(:*) / arr.size.to_f
#   puts "The result is #{format('%.3f', result)}"
# end

# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# def show_multiplicative_average(arr)
#   result = (arr.reduce(:*) / arr.size.to_f).round(3)
#   puts "The result is #{'%.3f' % result}"
# end

# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# def multiply_list(arr1, arr2)
#   arr1.zip(arr2).map { |factors| factors.reduce(:*) }
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

# def multiply_list(arr1, arr2)
#   arr1.size.times.map { |index| arr1[index] * arr2[index] }
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

=begin
P
input: 2 arrays as arguments
output: new array (containing products of pairs)
rules
explicit:
- neither array is empty
- array will contain every combination of pairs
implicit:
- returned array will be the size of the argument arrays multiplied
e.g. 2 * 4 = 8
-sort results by increasing value

D
arrays

A
- find every combination of numbers
- add combinations to a new array
- sort the new array and return
=end

# def multiply_all_pairs(arr1, arr2)
#   arr1.map { |num1| arr2.map { |num2| num1 * num2 } }.flatten.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]

# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map { |pair| pair.reduce(:*) }.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]

# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map { |num1, num2| num1 * num2 }.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]

=begin
P
input: string
output: string (next to the last word)

A
- split the words in string by spaces into an array
- index reference refence second to lats element in the array
=end

# def penultimate(str)
#   str.split[-2]
# end

# p penultimate('last word') #== 'last'
# p penultimate('Launch School is great!') #== 'is'

=begin
P
input: array
output: integer (sum of all leading subsequence)
rules:
explicit:
- return the sum of the sums of each leading subsequence
- assume the array contains at least 1 number - no empty arrays

D
arrays, integers

A
- find all the subsequences that start with the leading number
- sum all those subsequences
- sum grand total and return

- finding the subsequences 0, 0..1, 0..2, 0..3 or until last number == arr size -1
- use a loop to save sub sequences
  - initialize an index variable to 0
  - initialize the variable `sum` as a running total, starting at 0
  - add sum of subsequence to sum on each iteration
- return sum
=end

# def sum_of_sums(arr)
#   sum = 0
#   index = 0
#   while arr.size > index
#     sum += arr[0..index].sum
#     index += 1
#   end
#   sum
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

# def sum_of_sums(arr)
#   sum = 0
#   arr.size.times { |index| sum += arr[0..index].sum }
#   sum
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

# def sum_of_sums(arr)
#   (0..arr.size - 1).map { |index| arr[0..index].sum }.sum
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
A
- intialize a variable `sum` to 0 that tracks the overall total
- initialize a variable `accumulator` to 0 that tracks the total of each subsequence
- create a loop over the array
  - reassign accumulator to += current element
  - reassign sum variable to += accumulator
- return the `sum`
=end

# def sum_of_sums(arr)
#   sum = 0
#   accumulator = 0
#   arr.each do |num|
#     accumulator += num
#     sum += accumulator
#   end
#   sum
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
A
- initialize the variable `sum` to 0
- iterate through the a range of 1 to array size
  - find each subsequence each iteration as an array
    - calculate the sum of the subsequence
  - increment the sum variable by that sum
- return `sum`
=end

# def sum_of_sums(arr)
#   sum_total = 0
#   1.upto(arr.size) { |num| sum_total += arr[0, num].sum }
#   sum_total
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

# def sum_of_sums(arr)
#   (1..arr.size).map { |num| arr[0, num].sum }.sum
# end

# p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
input: 4 strings from user after prompt (noun, verb, adj, adv)
output: string (that combines the 4 inputs)
rules
explicit:
- prompt for a part of speech 4 times
- part of speech is on the same line *print
- save those values
- output those values into a string
D
strings
A
- prompt the use 4 times
- save the response to a variable part of speech
- output the string using the variables *string interpolation
=end

# print "Enter a noun: "
# noun = gets.chomp

# print "Enter a verb: "
# verb = gets.chomp

# print "Enter a adjective: "
# adjective = gets.chomp

# print "Enter a adverb: "
# adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

=begin
input: string
output: array
rules:
- return an array of all substrings
- start at the begining of the string
- array should be ordered from shortest to longest substring

D
strings

A
- initialize a substrings variable to an empty array
- iterate through the string size (characters = elements)
- take each substring by index
  - append substring to `substrings` array
- return substrings array
=end

# def leading_substrings(str)
#   substrings = []
#   str.size.times do |index|
#     substrings << str[0..index]
#   end
#   substrings
# end

# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# def leading_substrings(str)
#   (1..str.size).map { |num| str[0, num] }
# end

# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# def leading_substrings(str)
#   substrings = []
#   1.upto(str.size) { |num| substrings << str.slice(0, num) }
#   substrings
# end

# p leading_substrings('abc') #== ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin
P
input: string
output: array (every substring)
rules:
- substrings start at each character in the string
- substrings should be in order from the shortest to longest of that starting
character
- can use the leading_substring method from previous exercise

D
strings, arrays

A
- initialize a variable `substrings` to an empty array
- iterate through each character in the string
  - starting with that character find the substrings
  - add substrings to an array
- return the substrings array
=end

# def substrings(str)
#   substrings = []
#   str.size.times do |index|
#     substrings += leading_substring(str[index..-1])
#   end
#   substrings
# end

# def leading_substring(str)
#   (1..str.size).map { |num| str[0, num] }
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# def substrings(str)
#   (0..str.size - 1).map do |index|
#     (0..str.size - 1).map do |num|
#       str[index..num]
#     end
#   end.join(' ').split
# end

# p substrings('abcde')

=begin
input: string
output: array (of palindromes)
rules:
explicit:
- return an array of all substrings if they are palindromes
- palindromes are at least 2 characters
- palindromes are the same forward and backwards
- palindromes are case sensitive and consider all characters
- order substrings in the order they appear
- duplicates palindromes should be included multiple times
implicit:
- empty string returns an empty array
D
strings, arrays

A
- initialize variable `palindromes` to an array
- find every substring (at least 2 characters long) as an array
- if substring is a palindrome
  - append the substring to palindrome array
- return an array of palindromes

find_substrings(string)
- initialize a variable substrings to an empty array
  - iterate over every index of string
  - at that index find every string
- return the substrings array
=end

# def find_substrings(str) # return an array
#   substrings = []
#   (0..str.size - 1).each do |index1|
#     (index1..str.size - 1).each do |index2|
#       substrings << str[index1..index2]
#     end
#   end
#   substrings
# end

# def palindromes(str)
#   filtered = only_alpha(find_substrings(str))
#   filtered.select do |sub_str| 
#     sub_str.downcase == sub_str.reverse.downcase && sub_str.size >= 2
#   end
# end

# def only_alpha(arr) # returns an array
#   arr.each { |sub_str| sub_str.delete!('^a-zA-Z0-9') }
#   arr
# end

# p palindromes('Mada-m-') #== ["Mada-m", "Mada-m-", "ada", "ada-"]
# p palindromes('abcd') #== []
# p palindromes('madam') #== ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') #== [
# #   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
# #   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
# #   '-madam-', 'madam', 'ada', 'oo'
# # ]
# p palindromes('knitting cassettes') #== [
# #   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# # ]

=begin
P
input: 2 integers (start, end)
output: print all numbers with substitutions
rules:
- takes 2 arguments
- prints all numbers between the 2 arguments (including arguments)
- if number is divisible by only 3 substittue 'Fizz'
- if number is divisible by only 5 replace with 'Buzz'
- if both replace with 'FizzBuzz'
questions:
what does the output look like? all on one line? - any
D
integers, strings, arrays

A
- initializing a variable `numbers` to an empty array
- iterate through the range 1-15
  - if divisible by 3 and 5 
    - append 'FizzBuzz'
  - if divisible by 3
    - append 'Fizz'
  - if divisible by 5
    - append 'Buzz' to numbers
  - else
    - append current number
output the `numbers` array

=end

# def fizzbuzz(first, last)
#   numbers = []

#   (first..last).each do |num|
#     if num % 3 == 0 && num % 5 == 0
#       numbers << 'FizzBuzz'
#     elsif num % 3 == 0
#       numbers << 'Fizz'
#     elsif num % 5 == 0
#       numbers << 'Buzz'
#     else
#       numbers << num
#     end
#   end
  
#   puts numbers.join(', ')
# end

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=begin
A
- initialize a variable to an empty array
- iterate over the range first upto last
  - initialize a variable to empty string
  - concat corresponding stringn or number value to empty string
  - append string to array
- output array joined together as a string
=end

# def fizzbuzz(first, last)
#   first.upto(last).with_object('').map do |num, result|
#     result = 'Fizz' if num % 3 == 0
#     result += 'Buzz' if num % 5 == 0
#     result.empty? ? num : result
#   end.join(', ')
# end

# p fizzbuzz(1, 15)

=begin
P
input: str
output: new str
rules:
- double every characters in the string

D
strings, arrays

A
- iterate through every character
- replace that character with two characters
=end

# def repeater(str)
#   str.chars.zip(str.chars).join
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

# def repeater(str)
#   str.chars.map { |char| char + char }.join
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

# def repeater(str)
#   str.each_char.with_object('') { |char, result | result << char << char }
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

=begin
P
input: string
output: string
rules:
- return a string with letters doubled (capital and lowercase)
- vowels, digits, punctuation are not doubled

D
strings, arrays

A
- initialized a variable `result` to an empty stry
- check if letter needs to be doubled
  - add 2 letters to string if double letter
  - else add 1 letter to `result` string
return string

double(string)
- given a string
  - if string meets the double criteria
    - return true
  - else return false
- return boolean

=end

# def double_consonants(str)
#   result = ''
#   str.each_char do |char|
#     result << (double?(char) ? char * 2 : char)
#   end
#   result
# end

# def double?(str)
#   !str.delete('^a-zA-Z').delete('aeiou').empty?
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

=begin
P
input: integer (positive)
output: integer (in reverse)
rules
explicit:
- return the number with its digits reversed
implicit:
- for ending zeros have no returned leading zero's - 12000 -> 21
question:
do we need to check input validation - n/a - use given test cases

D
integers, arrays, strings

A
- convert integer to a string
- reverse
- convert string back to integer

- initialize a variable result to an empty string
- convert integer to a string
- iterate through each character of string
  - add each character to front of result string
- return result string as an integer

=end

# def reversed_number(num)
#   num.digits.join.to_i
# end

# p reversed_number(12345) #== 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

# def reversed_number(num)
#   num.to_s.reverse.to_i
# end

# p reversed_number(12345) #== 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

# def reversed_number(num)
#   result = ''
#   num.to_s.each_char { |char| result = char + result }
#   result.to_i
# end

# p reversed_number(12345) #== 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) #== 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

=begin
P
input: string
output: string (middle character(s))
rules:
- return the middle character or characters of the argument
- argument size is odd return 1 charater or even return 2 characters
- string argument is non-empty
- single character string return self

D
strings, arrays

A
- find string size assign to variable size
- if string size is odd
  - return middle character
- if string size even
  - return 2 middle characters

5 -> index 2
4 -> index 1, 2
5 / 2 -> 2
4 / 2 -> 2
=end

# def center_of(str)
#   half = str.size / 2
#   if str.size.even?
#     str[half - 1, 2]
#   else
#     str[half]
#   end
# end

# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

# def center_of(str)
#   half = (str.size / 2.0).ceil
#   str[half - 1..-half]
# end

# '01234' # 5 => 2
# '012345' # 6 => 3
# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

=begin
Problem
input: 2 arguments; array and hash
output: return string incorporating array and hash
rules:
- array includes 2 or more string elements producing name
- hash contains 2 keys, title and occupation
- return a string greeting using persons full name and title and occupation
questions:
will the array always be string elements? -use example -yes

D
strings, arrays, hashes

A
- access the information with element reference
- combine into a string *string interpolation
=end

# def greetings(arr, hash)
#   "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} " \
#   "#{hash[:occupation]} around."
# end
  
# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# # => Hello, John Q Doe! Nice to have a Master Plumber around.

# def greetings(arr, hash)
#   "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} " \
#     "#{hash[:occupation]} around."
# end
  
# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# # => Hello, John Q Doe! Nice to have a Master Plumber around.

# def greetings(arr, hash)
#   name = arr.join(' ')
#   job = "#{hash[:title]} #{hash[:occupation]}"
#   "Hello, #{name}! Nice to have a #{job} around."
# end
  
# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# # => Hello, John Q Doe! Nice to have a Master Plumber around.

=begin
P
input: integer
output: integer (number - if 'double number' else number * 2)
rules:
- double number is an even number with left side digits == right side digits
- if double number return double number
- else return number * 2

- large test case - may need a memory efficient solution

D
integers, strings or arrays

A
- if number is even
  - if number is first half == second half
    return number
  - else return number * 2
- else return number * 2

halves_equal?(number)
- convert number to string
- split number into first and second half
- if first half == second half
=end

# def twice(num)
#   if num.to_s.size.even? && halves_equal?(num)
#     num
#   else
#     num * 2
#   end
# end

# def halves_equal?(num)
#   num = num.to_s
#   first_half = num[0, num.size / 2]   # alt: num[0..(num.size / 2) - 1]
#   second_half = num[num.size / 2..-1] # alt: num[num.size / 2, num.size / 2]
#   first_half == second_half
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

# # Refactored
# def twice(num)
#   halves_equal?(num) ? num : num * 2
# end

# def halves_equal?(num)
#   str = num.to_s
#   str[0, (str.size / 2)] == str[(str.size / 2)..-1] 
#   # alt: str[0..(str.size / 2) - 1] == str[str.size / 2, str.size / 2]
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

=begin
input: integer
output: integer
rules:
- if integer is poitive change to a negative
- else return integer
=end

# def negative(num)
#   num.positive? ? -num : num
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby

# def negative(num)
#   num > 0 ? -num : num
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0  

# def negative(num)
#   -num.abs
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0  

# def sequence(num)
#   1.upto(num).map { |n| n }
# end

# p sequence(5) #== [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# def sequence(num)
#  (1..num).to_a
# end

# p sequence(5) #== [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# def sequence(num)
#   1.upto(num).to_a
# end

# p sequence(5) #== [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# def sequence(num)
#   [*1..num]
# end

# p sequence(5) #== [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# # Further Exploration : -1 0 1 or 1 0 -1
# def sequence(num)
#   num >= 0 ? [*1..num] : [*-1..1]
# end

# p sequence(5) #== [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
# p sequence(0)
# p sequence(-1)

# def uppercase?(str)
#   str.upcase == str
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

# def uppercase?(str)
#   !str.each_char.any? { |char| char != char.upcase }
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

# def uppercase?(str)
#   !str.upcase!
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

=begin
input: string
output: array
rules:
- return an array that contains every word + space + word size
- assume words are sepearated by 1 space
- every substring is a word
implicit:
- words are in the same order
- empty string returns an empty array

D
strings, arrays

A
- sepearte string into an array of words
- iterate through each word
  - append space and word count to the word
- return array
=end

# def word_lengths(str)
#   str.split.map { |word| "#{word} #{word.size}"}
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]
# p word_lengths("") == []

# def swap_name(str)
#   str.split.reverse.join(', ')
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'

# def swap_name(str)
#   first, last = str.split
#   "#{last}, #{first}"
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'

=begin
input: 2 integers as arguments
output: array of integers
rules:
- first argument is the count - number of elements in sequence
- second number is the starting number - multiples of number
- count will always be 0 or greater
- if second is negative count down - else count up 
D
integers, arrays

A
- initialize sequence variable to an empty array
- initialize variable increment to 0
- count number of times 
  - increment increment by start number
  - append increment number to sequence
- return sequence
=end

# def sequence(count, start)
#   sequence = []
#   increment = 0

#   count.times do
#     increment += start
#     sequence << increment
#   end

#   sequence
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

# =begin
# A
# - iterate over a range 1 to count
#   - populate a new array with current num * start number
# =end

# def sequence(count, start)
#   (1..count).map { |num| num * start }
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

# def sequence(count, starting_n)
#   result = Array.new(count)
#   p result
#   result.map.with_index(1) { |_, i| starting_n * i}
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

=begin
input: 3 integers as arguments
output: string (letter grade from chart)
rules:
- arguments are 0 - 100
- determine the mean/average scores sum / 3
- return the letter grade
question:
how do we round? not specified
D
case statment, integers, strings

A
- find the mean - rounded (use float for 3.0)
- use a case statment to determine letter grade
  - range 
- return letter grade
=end

# def get_grade(score1, score2, score3)
#   mean = ((score1 + score2 + score3)/3.0).round
#   case mean
#   when 100..   then 'A+'
#   when 90..100 then 'A'
#   when 80..89  then 'B'
#   when 70..79  then 'C'
#   when 60..69  then 'D'
#   else              'F'
#   end
# end

# p get_grade(95, 90, 93) #== "A"
# p get_grade(50, 50, 95) #== "D"
# p get_grade(100, 105, 115) #== "A+"

=begin
- iterate through argument array
  - create an array with quantity fruit elements
  - append this array to a new array
  - flatten
- return new array
=end

# def buy_fruit(arr)
#   arr.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
# # ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin
A
- initialize a variable result to an empty array
- iterate through argument array
  - for each sub_arr element append fruit to `result` times the quantity
- return result array
=end

# def buy_fruit(arr)
#   result = []
#   arr.each do |fruit, quantity|
#     quantity.times { result << fruit }
#   end
#   result
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
# # ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin
input: array of 4 letter strings
output: print out groups of words that anagrams (as arrays)
rules:
-anagrams are words taht have the same exact letters in them (different order)
- print out words in an array

D
hash, array, strings

A
- initialize variable `anagrams` to an empty hash
- iterate through words array
  - convert the word to an array and sort and join back as a string
  - if sorted value is included in hash add word to array value
  - else (not included) add sorted word to hash with word in an array
- output each value(array) of the anagrams hash
=end

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# def find_anagrams(arr)
#   anagrams = {}

#   arr.each do |word|
#     sorted_word = word.chars.sort.join
#     if anagrams.include?(sorted_word)
#       anagrams[sorted_word] << word
#     else
#       anagrams[sorted_word] = [word]
#     end
#   end

#   anagrams.each { |_, value| p value }
# end

# find_anagrams(words)

=begin
A
- create an array of the sorted words
- initialize a variable to an empty hash
- iterate through the sorted words array with index
  - add each sorted word as a key and the corresponding word as value

=end

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# sorted_words = words.map { |word| word.chars.sort.join }

# result = {}
# sorted_words.each_with_index do |sorted, index|
#   if result.include?(sorted)
#     result[sorted] << words[index]
#   else
#     result[sorted] = [words[index]]
#   end
# end

# result.each { |_, value| p value}

=begin
input: array
output: new array
rules:
- do not mutate the orginal array

D
arrays

A
- create a duplicate array
- mutate that to append to the end the removed first element

A
No duplicate / no mutating
- take array elements of first arr.size elements - 1
- add the first element to the end
=end

# def rotate_array(arr)
#   new_arr = arr.dup
#   new_arr << new_arr.shift
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# def rotate_array(arr)
#   arr[1..-1] << arr[0]
# end

# def rotate(arg)
#   type = arg.class
#   arg = arg.to_s if type == Integer
#   return type == Integer ? arg.to_i : arg if arg.size <= 1
#   result = arg[1..-1] << arg[0]
#   type == Integer ? result.to_i : result
# end

# p rotate([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate(['a']) == ['a']
# p rotate(23416)
# p rotate(3)
# p rotate('string here')
# p rotate('s')

# x = [1, 2, 3, 4]
# p rotate(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

=begin
input: 2 integers (number, and the last n digits of number)
output: integer
rules:
- rotate the numbers similar to the last exercise
- second argument references the last n digits to rotate
- assume n is always a poitive number

questions:
will the first argument ever be negative? n/a - solve for test cases
validate number? n/a

D
integers, strings

A
- define a rotate method to use

- use the rotate method on the last n numbers

=end

# def rotate_number(num)
#   (num[1..-1] << num[0])
# end

# def rotate_rightmost_digits(num, n)
#   str = num.to_s
#   last = rotate_number(str[-n..-1])
#   first = str[0, str.size - n]
#   (first + last).to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# def rotate_number(num)
#   (num[1..-1] << num[0])
# end

# def rotate_rightmost_digits(num, n)
#   str = num.to_s
#   str[-n..-1] = rotate_number(str[-n..-1])
#   str.to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

=begin
input: integer
output: rotated integer
rules:
- find the maximum roatation
- rotate the first second third...ect to all the digits

D
integers, strings, arrays

A
- use the rotate_rightmost_digits method
  - pass in number to string size as n and updated num every time

=end

# def rotate_number(num)
#   (num[1..-1] << num[0])
# end

# def rotate_rightmost_digits(num, n)
#   str = num.to_s
#   str[-n..-1] = rotate_number(str[-n..-1])
#   str.to_i
# end

# def max_rotation(num)
#   num = num.to_s
#   num.to_s.size.downto(2) do |n|
#     num = rotate_rightmost_digits(num, n)
#   end
#   num
# end

# p max_rotation(735291) #== 321579
# p max_rotation(3) #== 3
# p max_rotation(35) #== 53
# p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) #== 7_321_609_845

# # Further Exploration
# def max_rotation(num)
#   str = num.to_s
#   str.size.times { |index| str << str.slice!(index) }
#   str #can invoke #to_i here if preserving zeros doesn't matter
# end

# p max_rotation(735291) #== 321579
# p max_rotation(3) #== 3
# p max_rotation(35) #== 53
# p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) #== 7_321_609_845
# p max_rotation(2003)

=begin
P
input: integer (total number of switches n)
output: array (light numbers that are on)
rules:
- toggle every switch 1 to n
- toggle every switch 2 to n etc until finally toggle just n
- return the on light numbers after n repititions

E
on_lights(5) # => [1, 4]
on_lights(10) # => [1, 4, 9]

D
integers, arrays

A
- create an array of booleans - true == on false == off
- default to all true (skip first iteration)
- loop 1 upto n -1
- initialize a variable `toggle`
- 1 to n - 1 toggle every other switch, 2 to n-1, 3 to n-1, ...etc up to n -1
- if element in array of booleans = true select index + 1
=end

# def on_lights(n)
#   lights = [true] * n
#   result = []

#   1.upto(n - 1) do |light_index|
#     (light_index..n - 1).each do |index|
#       lights[index] = !lights[index] if (index + 1) % (light_index + 1) == 0
#     end
#   end

#   lights.each.with_index { |bool, index| result << (index + 1) if bool }
#   result
# end

# p on_lights(5) # => [1, 4]
# p on_lights(10) # => [1, 4, 9]

# # Provided Solution:
# # initialize the lights hash
# def initialize_lights(number_of_lights)
#   lights = Hash.new
#   1.upto(number_of_lights) { |number| lights[number] = "off" }
#   lights
# end

# # return list of light numbers that are on
# def on_lights(lights)
#   lights.select { |_position, state| state == "on" }.keys
# end

# # toggle every nth light in lights hash
# def toggle_every_nth_light(lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == "off") ? "on" : "off"
#     end
#   end
# end

# # Run entire program for number of lights
# def toggle_lights(number_of_lights)
#   lights = initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light(lights, iteration_number)
#   end

#   on_lights(lights)
# end

# p toggle_lights(1000)

=begin
using an hash
A
- create a collection to represent toggleable switches
- toggle the switches in the prescribed order
- return the number of switches in the on position of the collection

- initialize a hash with all values to false 1 to n
- iterate through 1 through n
  - iterate through each sub_sequence
    - toggle switch(hash value) if % n == 0
- return array of keys for which hash values == true
=end

# def on_lights(n)
# lights = {}
# (1..n).each { |num| lights[num] = false }

# (1..n).each do |nth_light|
#   (nth_light..n).each do |light|
#     lights[light] = !lights[light] if light % nth_light == 0
#   end
# end

# lights.select { |_light, state| state }.keys
# end

# p on_lights(5) # [1, 4]
# p on_lights(10) # [1, 4, 9]

=begin
input: integer (odd)
output: display n x n grid
rules:
- output/print a display of diamonds
- grid is n x n (n is argument) size
- use * to print diamond
- argument is always odd
questions:
- will integer always be positive? - yes, based on examples

D
strings, integer

A
- output top
- output middle
- output bottom

create a top method
- loops through 1...9
- top * times (1) centered over 9 characters padded by ' ' spaces
  - * times next odd number (3) 
  - break 

ouput middle * times n

create a bottom half method
- create a loop
  - counts down to 1 from n - 1

# =end
# def top_diamond(n)
#   1.upto(n) { |num| puts "#{'*' * num}".center(n) if num.odd? }
# end

# def bottom_diamond(n)
#   (n - 1).downto(1) { |num| puts "#{'*' * num}".center(n) if num.odd? }
# end

# def diamond(n)
#   top_diamond(n)
#   bottom_diamond(n)
# end

# diamond(1)
# # *
# diamond(3)
# #  *
# # ***
# #  *
# diamond(9)
# #     *
# #    ***
# #   *****
# #  *******
# # *********
# #  *******
# #   *****
# #    ***
# #     *

=begin
input: string (list of commands or integers separated by spaces)
output: with print - outputs the register value
rules:
- create a mini-language that uses a stack 
- incorporate the list of commands
- assume all programs are correct (no input validation needed)
- initialize the register to 0
- can use an array for the stack

D
array, integer, string

A
- initialize a variable to an array (stack)
- initialize a variable register to 0

=end

# def minilang(program)
#   stack = []
#   register = 0
#   program.split.each do |command|
#     if ['ADD', 'SUB', 'MULT', 'DIV', 'MOD', 'POP'].include?(command) && stack.empty?
#       puts "Error: Empty Stack" 
#     end

#     case command
#     when 'PUSH'  then stack << register
#     when 'ADD'   then register += stack.pop
#     when 'SUB'   then register -= stack.pop
#     when 'MULT'  then register *= stack.pop
#     when 'DIV'   then register /= stack.pop
#     when 'MOD'   then register %= stack.pop
#     when 'POP'   then register = stack.pop
#     when 'PRINT' then puts register
#     else              register = command.to_i
#     end
#   end
# end

# # minilang('PRINT')
# # # 0
# # minilang('5 PUSH 3 MULT PRINT')
# # # 15
# # minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # # 5
# # # 3
# # # 8
# # minilang('5 PUSH POP PRINT')
# # # 5
# # minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # # 5
# # # 10
# # # 4
# # # 7
# # minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # # 6
# # minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # # 12
# # minilang('-3 PUSH 5 SUB PRINT')
# # # 8
# # minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
# minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 5 PUSH 4 MULT ADD SUB DIV PRINT')
# => 8

=begin
input: string
output: returns same string (any sequence of number strings converted to digits)
rules:
- convert string to digits
- if those 10 words appear anywhere ? or seperated by spaces? 
- any sequence of words - replace with digits
- return the same string (mutate the argument string)

questions:
how are words defined? - any sequence - does not need spaces to separate
D
- strings, hash or array

A
- create a hash keys as words and values as digits
- if a word matches word from collection
  - mutate word to corresponding value from collection
=end

# def word_to_digit(str)
#   words = %w(zero one two three four five six seven eight nine)
#   words.each_with_index do |word, digit|
#     str.gsub!(word, digit.to_s)
#   end
#   str
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.')
# # 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin
input: integer (nth place in fib sequence)
output: integer (the number at nth place)
rules:
- use recursion
=end

# def fibonacci(nth)
#   return 1 if nth <= 2
#   fibonacci(nth - 1) + fibonacci(nth - 2)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

# # Provided example solution
# def fibonacci_tail(nth, acc1, acc2)
#   if nth == 1
#     acc1
#   elsif nth == 2
#     acc2
#   else
#     # p "nth: #{nth} 'nth minus 1': #{nth -1}"
#     fibonacci_tail(nth - 1, acc2, acc2 + acc1)
#   end
# end

# def fibonacci(nth)
#   fibonacci_tail(nth, 1, 1)
# end

# p fibonacci(9000)

=begin
input: integer (nth)
output: integer (number at nth place)
rules:
- solve without recursion - procedurally
=end

# def fibonacci(n)
#   sequence = [1, 1]
#   loop do
#     return sequence[n - 1] if sequence.size >= n
#     sequence << sequence[-2, 2].sum
#   end  
# end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

# Provided solution
# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

=begin
input: integer (nth place)
output: integer - (last digit of the nth place number)
rules:
- given the nth place
- find the last digit of the number of the fibonacci sequence
implicit:
- you only need the last digits of a number to calculate the 1's place

D
integers, arrays?

A
- calculate the sequence but only save the 1's place value
- can use % 10

=end

# def fibonacci_last(n)
#   first, last = 1, 1
#   3.upto(n) do
#     first, last = last, (first + last) % 10
#   end
#   last
# end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

=begin
input: string (content of a text file)
output: string (longest sentence in the text file)
rules:
- write a program
- reads the content of a text file (convert to string)
- find the longest sentence (most number of words)
- words are any sequence of characters not a space or end character.
- sentences end with . ! or ?

D
strings, arrays

A
- Find how to load a text file into Ruby
- create an array from text spliting each word on spaces
- initialize the longest sentence variable to an empty string
- initialize the `current sentence variable`
- iterate through each word and append each word with a space to `current_sentence`
  - Once a break character . ! ? is reached end current sentence
  - if current sentence is longer than longest sentence (word count) 
    - set longest sentence to current sentence if true
- return longest sentence
=end

# def longest_sentence(text)
#   longest_sentence = ''
#   current_sentence = ''

#   text.split.each do |word|
#     current_sentence << word << ' '
#     if ['.', '?','!'].include?(word[-1])
#       current_sentence[-1] = ''
#       if current_sentence.split.size > longest_sentence.split.size
#         longest_sentence = current_sentence
#       end
#       current_sentence = ''
#     end
#   end

#   longest_sentence
# end

# p longest_sentence('TEst. ? there , 23 !')
# # Example text:
# text =
# "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."

# # text = File.read('sample_text.txt')
# p longest_sentence(text)

=begin
input: string
output: boolean
rules:
- return true if string can be spelled with blocks
- return false otherwise
- each block can only be used once
- each block can only be used to spell one side of the block
- case insensitive
D
hash, strings

A
- set a hash with key value pairs of 'blocks'
- if either letter of block is used delete block
- iterate through the words
  - delete each used block
  - if letter not available return false
- else return true

=end

# BLOCKS = [
#   "BO", "XK", "DQ", "CP", "NA", "GT", "RE", "FS", "JW", "HU", "VI", "LY", "ZM"
# ]
# def block_word?(word)
#   BLOCKS.none? { |block| word.upcase.count(block) > 1}
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

=begin
input: string
output: hash (key: case, value: % of occurences)
rules:
- string contains at least 1 character
- 3 hash entries, lower, upper, neither, : percent of corresponding characters
- round to floats

D
hash, strings

A
- initialize an empty array
- iterate through the string characters
  - count the characters
    - total characters
    - characters of each type
- convert the count to percentages.
- return a hash
=end

# def letter_percentages(str)
#   cases = {lowercase: 0, uppercase: 0, neither: 0}
#   total_chars = str.size.to_f

#   str.each_char do |char|
#     if char =~ /[a-z]/
#       cases[:lowercase] += 1
#     elsif char =~ /[A-Z]/
#       cases[:uppercase] += 1
#     else
#       cases[:neither] += 1
#     end
#   end

#   cases.each { |state, num| cases[state] = ((num / total_chars) * 100.0).round(2) }
#   cases
# end

# p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
# p letter_percentages('abcdefGHI')

=begin
input: string
output: boolean
rules:
- balance the string
- string is balanced if there are an even number of parentheses
- the ( left parentheses must proceed the right )

D
strings, booleans

A
- count the total parentheses
  - if odd then return false
- the count for ( can never be less than count for )
- iterate through the string
  - append ( or ) to a new array
  - count array values every iteration
    - if ) is ever more than (  return false
- return true
=end

# def balanced?(str)
#   return false if str.count('(') != str.count(')')
#   parentheses = ''

#   str.each_char do |char|
#     parentheses << char if char == ')' || char == '('
#     return false if parentheses.count(')') > parentheses.count('(')
#   end

#   true
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

=begin
input: 3 integers (length of 3 sides of triangle)
output: 1 of 4 symbols
rules:
- check what type of triangle is given based on side lengths
- invalid if 2 shorter sides are not greather than longest
  - if all sides are not greater than 0
- equilateral - all sides are equal
- isoceles - 2 sides are the same and 3rd different
- scalene - all sides are different lengths

D
integers, symbols, arrays

A
- check if triangle is invalid
- check if equilateral
- check if isoceles
- check if scalene
- return symbold
=end

# def triangle(s1, s2, s3)
#   sides = [s1, s2, s3]
#   case
#   when sides.include?(0) || sides.min(2).sum < sides.max
#     :invalid
#   when s1 == s2 && s1 == s3
#     :equilateral
#   when sides.uniq.size == 3
#     :scalene
#   else
#     :isosceles
#   end
# end

# p triangle(3, 3, 3) #== :equilateral
# p triangle(3, 3, 1.5) #== :isosceles
# p triangle(3, 4, 5) #== :scalene
# p triangle(0, 3, 3) #== :invalid
# p triangle(3, 1, 1) #== :invalid

# def triangle(a1, a2, a3)
#   angles = [a1, a2, a3].sort
#   case
#   when angles.sum != 180 || angles.min <= 0
#     :invalid
#   when angles.include?(90)
#     :right
#   when angles.all? { |angle| angle < 90 }
#     :acute
#   else
#     :obtuse
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

=begin
input: integer - year
output: integer - number of Friday the 13ths
rules:
- year is greater than 1752

D
integers

A
* use date/time
- initialize count variable to 0
- check the 13th of every month of the given year
  - if it on a Friday add + 1
- return count
=end

# def friday_13th(year)
#   count = 0
#   (1..12).each do |month|
#     count += 1 if Time.local(year, month, 13).friday?
#   end
#   count
# end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

=begin
input: integer
output: integer - next featured number
rules:
- given an integer return the next featured number > than argument
- return an error message if there is no next featured number
- featured number has the following criteria:
  - odd number
  - mulitple of 7
  - each digit occurs exactly once each
-

D
integers, strings or arrays

A
- can count by 7's 
- if number is odd and digits occur exactly once each return
- if number is greater than 9_999_999_999 or count goes past limit return error

=end
# LIMIT = 9_999_999_999

# def featured(num)
#   num.upto(LIMIT) do |n|
#     if n % 7 == 0 && n.odd? && (n.digits.uniq == n.digits) && n > num
#       return n 
#     end
#   end

#   "There is no possible number that fulfills those requirements"
# end

# p featured(12) #== 21
# p featured(20) == 21
# p featured(21) #== 35
# p featured(997) #== 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
# p featured(1_023_456_987)
# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

=begin
input: array (at least 2 elements)
output: sorted array (ascending order)
rules:
- use the bubble sort technique
- compare the first pair, then second etc.
  - if first element is greater than second swap
- swap the elements in place (mutate the array)
- can optimize (but not sorting the last -n number for each iteration)
- comparison
questions:
are all the elements comparable? no validation needed

D
array

A
compare each sub-sequence starting at index 0
  - [0, 2], [1, 2], [2, 2] etc. until arr.size - 2

- can modify for upper limit to decrease by 1 every time
=end

# def bubble_sort!(arr)
#   arr.size.times do
#     0.upto(arr.size - 2) do |index1|
#       first, second = arr[index1, 2]
#       arr[index1], arr[index1 + 1] = second, first if first > second
#     end
#   end
#   arr
# end

# array = [5, 3]
# p bubble_sort!(array)
# array == [3, 5]
# array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# array == [1, 2, 4, 6, 7]
# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=begin
input: integer
output: integer (difference)
rules:
- find the difference between to values
- value 1 is the square of the sum of the first n +integers
- value 2 is the sum of the squares of the first n +integers
question: integer is always positive? yes

D
arrays, integers

A
- create an array/range and populate with first n positive integers
  - find value 1
  - findi value 2
- find the difference
=end

# def sum_square_difference(n)
#   (1..n).sum**2 - (1..n).map { |num| num**2 }.sum
# end

# p sum_square_difference(3) == 22
#   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150

=begin
input: string - text from text file
output: string - text with substituted parts of speech
rules:
- read in text from seperate text file
- place random words in
- print results

D
strings

A
- construct parts of speech into an array
- replace %{part_of_speech} with random word from corresponding array
-
=end

# adjectives = %w(quick lazy sleepy ugly)
# nouns = %w(fox dog head leg)
# verbs = %w(jumps lifts bites licks)
# adverbs = %w(easily lazily noisily excitedly)

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     line.gsub!('%{adjective}', adjectives.sample)
#     line.gsub!('%{noun}', nouns.sample)
#     line.gsub!('%{adverb}', adverbs.sample)
#     line.gsub!('%{verb}', verbs.sample)
#     puts line
#   end
# end

# # Provided Example solution
# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS      = %w(fox dog head leg cat tail).freeze
# VERBS      = %w(spins bites licks hurdles).freeze
# ADVERBS    = %w(easily lazily noisly excitedly).freeze

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     puts format(line, noun:      NOUNS.sample,
#                       verb:      VERBS.sample,
#                       adjective: ADJECTIVES.sample,
#                       adverb:    ADVERBS.sample)
#   end
# end

=begin
input: integer n - (odd integer 7 or greater)
output: display/print n x n grid
rules:
- given an n
- print the pattern
- n lines
- n characters across

D
strings,

A
- print top part
  - 3 stars with 3 spaces inbetween
  - 3 stars with 1 space before/after and 2 space inbetween
  - 3 stars 2 spaces on outside 1 space on inside
  - set variables inside and outside spaces 
    - inside starts at n - space (0)  space: 9, 7 , 5, 3
    - outside starts at space - 3 / 2 space: 9, 7, 5, 3

- middle line
- print bottom lines
=end

# def star(n)
#   top_star(n)
#   puts "#{'*' * n}"
#   bottom_star(n)
# end

# def top_star(n)
#   n.downto(3) do |num|
#     next if num.even?
#     outside = "#{' ' * ((n - num) / 2)}"
#     inside = "#{' ' * ((num - 3) / 2)}"
#     puts "#{outside}*#{inside}*#{inside}*#{outside}"
#   end
# end

# def bottom_star(n)
#   3.upto(n) do |num|
#     next if num.even?
#     outside = "#{' ' * ((n - num) / 2)}"
#     inside = "#{' ' * ((num - 3) / 2)}"
#     puts "#{outside}*#{inside}*#{inside}*#{outside}"
#   end
# end

# star(7)
# # *  *  *
# #  * * *
# #   ***
# # *******
# #   ***
# #  * * *
# # *  *  *
# star(9)
# # *   *   *
# #  *  *  *
# #   * * *
# #    ***
# # *********
# #    ***
# #   * * *
# #  *  *  *
# # *   *   *

=begin
input: matrix(3 x 3 array of sub arrays)
output: matrix (3 x 3 array of sub arrays tranasposed)
rules:
- transpose the given matrix
- column = row and row = column

D
arrays, integers

A
create a new array
- iterate through matrix
- add the element at the current index in each sub array to a new sub-array

=end

# def transpose(matrix)
#   new_matrix = [[], [], []]
#   0.upto(matrix.size - 1) do |index|
#     0.upto(matrix.size - 1) do |row|
#       new_matrix[index] << matrix[row][index]
#     end
#   end
#   new_matrix
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

=begin
input: array (matrix at least 1 x 1)
output: array (rows and columns swapped)
rules:
- can modify transpose method from last problem
- 
=end

# def transpose(matrix)
#   new_matrix = Array.new(matrix.first.size) { Array.new }
#     0.upto(matrix.first.size - 1) do |index|
#       0.upto(matrix.size - 1) do |row|
#         new_matrix[index] << matrix[row][index]
#       end
#     end
#   new_matrix
# end

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
# [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

# def transpose(matrix)
#   transposed = []
#   (matrix.first.size).times do |index|
#     transposed << matrix.map { |row| row[index] }
#   end
#   transposed
# end

# p transpose([[1, 2, 3, 4]]) #== [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) #==
# #[[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

=begin
input: array of sub-arrays (matrix)
output: array rotated 90 degrees
rules:
- rotate the array 90 degrees
  - column from bottom to top becomes row 1
  - row 1 becomes last column from top to bottom

=end

# def rotate90(matrix)
#   matrix.transpose.map(&:reverse)
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]
# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# def rotate_degrees(matrix, degrees)
#   result = matrix
#   (degrees / 90).times { result = rotate90(result) }
#   result
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p rotate_degrees(matrix1, 360)

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else 
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

=begin
input: 2 arrays (sorted, may be empty)
output: 1 sorted combined array
rules:
- do not sort the result array at any stage
- build the result array one element at a time in proper order
- do not mutate the input arrays

D
arrays

A
initialize a new array result
combine the 2 arguments into a NEW array
- loop until new array is empty
  - delete the lowest minimum element and append to result
=end

# def merge(arr1, arr2)
#   combined = arr1 + arr2
#   combined.min(combined.size)
# end

# p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

=begin
P
input: array
output: sorted array
rules:
- use merge sort - a recursive sorting algorithm
- break elements into nested sub-arrays
- combine the nested sub-arrays in sorted order

D
arrays

A

# =end

# def merge(arr1, arr2)
#   combined = arr1 + arr2
#   combined.min(combined.size)
# end

# def merge_sort(arr)
#   return arr if arr.size <= 1

#   arr1 = arr[0..arr.size / 2 - 1]
#   arr2 = arr[arr.size / 2..-1]

#   arr1 = merge_sort(arr1)
#   arr2 = merge_sort(arr2)

#   merge(arr1, arr2)
# end

# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

=begin
input: rational
output: array of denominators

input: array of fractions
output: 
- return egyptian fraction from a rational
- return a rational from an egyptian fraction
- use the Ruby rational class

D
rationals, arrays

A
- initialize count variable to 0
- initialize result array
- create a loop
  - if count variable + next highest <= target
    - count variable add next highest
    - append denominator to result array
  - break if count variable == target 
=end

# def egyptian(rational)
#   count = Rational(0/1)
#   result = []
#   denominator = 1
#   loop do
#     if Rational(1, denominator) + count <= rational
#       result << denominator
#       count += Rational(1, denominator)
#     end

#     break if count == rational
#     denominator += 1
#   end
#   result
# end

# def unegyptian(arr)
#   arr.reduce(0) { |sum, denominator| sum + Rational(1, denominator) }
# end

# p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# counter.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'

# def shout_out_to(name)
#   puts 'HEY ' + name.chars.each { |c| c.upcase! }.join
# end

# shout_out_to('you') # expected: 'HEY YOU'

# def valid_series?(nums)
#   return false if nums.sum != 47

#   odd_count = nums.count { |n| n.odd? }
#   odd_count == 3
# end

# p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
# p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
# p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
# p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
# p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words.unshift(words[i])
#     i += 1
#   end

#   reversed_words.join(' ')
# end

# p reverse_sentence('how are you doing')
# # expected output: 'doing you are how'

# cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

# deck = { :hearts   => cards.clone,
#          :diamonds => cards.clone,
#          :clubs    => cards.clone,
#          :spades   => cards.clone }

# def score(card)
#   case card
#   when :ace   then 11
#   when :king  then 10
#   when :queen then 10
#   when :jack  then 10
#   else card
#   end
# end

# # Pick one random card per suit

# player_cards = []
# deck.keys.each do |suit|
#   cards = deck[suit]
#   cards.shuffle!
#   player_cards << cards.pop
# end

# # Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     sum += score(card)
#   end

#   sum # += remaining_cards.sum
# end

# puts sum

# def move(n, from_array, to_array)
#   return if n == 0
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
# # needed a break condition for the recursive method

# def neutralize(sentence)
#   words = sentence.split(' ')
#   sentence.split.each do |word|
#     words.delete(word) if negative?(word)
#   end

#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end

# puts neutralize('These dull boring cards are part of a chaotic board game.')
# # Expected: These cards are part of a board game.
# # Actual: These boring cards are part of a board game.

# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password(password)
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   password = set_password
# end

# verify_password(password)

# def valid_integer?(string)
#   string.to_i.to_s == string
# end

# def guess_number(max_number, max_attempts)
#   winning_number = (1..max_number).to_a.sample
#   attempts = 0

#   loop do
#     attempts += 1
#     break if attempts > max_attempts

#     input = nil
#     until valid_integer?(input)
#       print 'Make a guess: '
#       input = gets.chomp
#     end

#     guess = input.to_i

#     if guess == winning_number
#       puts 'Yes! You win.'
#       break
#     else
#       puts 'Nope. Too small.' if guess < winning_number
#       puts 'Nope. Too big.'   if guess > winning_number

#       # Try again:
#       # guess_number(max_number, max_attempts)
#     end
#   end
# end

# guess_number(10, 3)

# Term frequency - inverse document frequency:
# A measure of how important a term is to a document in a collection of documents
# (the importance increases proportionally to the term frequency in the document,
# but decreases with the frequency of the word across documents)

# def tfidf(term, document, documents)
#   tf(term, document) * idf(term, documents)
# end

# # Term frequency (simple version):
# # the number of times a term occurs in a document

# def tf(term, document)
#   document.split(/[\s-]/).count { |word| word.downcase == term }
# end

# # Inverse document frequency:
# # measure of how much information the word provides,
# # based on the number of documents in which it occurs
# # (the rarer it is, the more information it provides)

# def idf(term, documents)
#   number_of_documents = documents.length
#   number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }
#   return 0 if number_of_documents_with_term == 0
#   Math.log(number_of_documents.fdiv(number_of_documents_with_term))
# end

# # Very simple example

# document1 = "Schrödinger's cat is a thought experiment often featured in discussions of the interpretation of quantum mechanics. The Austrian physicist Erwin Schrödinger devised " +
# "it in 1935 as an argument against the Copenhagen interpretation of quantum mechanics, which states that an object in a physical system can simultaneously exist in all possible configurations, " +
# "a state called quantum superposition, and only observing the system forces the object into just one of those possible states. Schrödinger disagreed with this interpretation. In particular, " +
# "quantum superposition could not work with larger objects. As an illustration, he presented a scenario with a cat in a sealed box, whose fate was linked to a subatomic event that may or may not occur. " +
# "In a quantum superposed state of the subatomic particles, the cat would be both alive and dead, until someone opened the box and observed it."

# document2 = "The domestic cat is a small, furry, carnivorous mammal. The term cat can, however, also refer to wild cats, which include animals like lions, tigers and leopards. " +
# "Cats are claimed to have a lower social IQ than dogs but can solve more difficult cognitive problems and have a longer-term memory. International Cat Day is celebrated on August 8. " +
# "Famous cats include Schrödinger's cat as well as Pudding and Butterscotch, which occur in some of the Launch School assignments."

# document3 = "One of the core values that sets Launch School apart from some other coding schools out there is our emphasis on Mastery-based Learning. If the key to becoming a competent and confident Software Engineer " +
# "is deep understanding of first principles, then the key to acquiring that understanding is through Mastery-based Learning. The core of Mastery-based Learning is replacing time with mastery. There's no graduation, " +
# "but a continual learning journey of micro-improvements. At Launch School, we're not trying to catch a wave or take advantage of a surge in demand. Instead, we're trying to focus on things that'll be useful to you for decades to come, " +
# "such as a systematic problem-solving approach or learning how to deconstruct a programming language or building sound mental representations of how web application work. Everything we're trying to do at " +
# "Launch School is with an eye towards sustainable studying habits and building skills for a long-term career."

# documents = [document1, document2, document3]

# # The higher the tf-idf score of a term for a document, the more informative
# # it is for that document.
# # E.g. when someone searches for the term 'cat' in your document collection,
# # you want to return document1 and document2, but not document3.
# # For the term 'quantum mechanics', on the other hand, you only want to return document1.

# # expected outputs:
# puts tfidf("cat", document1, documents) # ~ 1.2
# puts tfidf("cat", document2, documents) # ~ 1.6
# puts tfidf("cat", document3, documents) # 0

# puts tfidf("quantum", document1, documents) # ~ 5.5
# puts tfidf("quantum", document2, documents) # 0
# puts tfidf("quantum", document3, documents) # 0

# puts tfidf("mastery", document1, documents) # 0
# puts tfidf("mastery", document2, documents) # 0
# puts tfidf("mastery", document3, documents) # ~ 3.3

# puts tfidf("some", document1, documents) # 0
# puts tfidf("some", document2, documents) # ~ 0.4
# puts tfidf("some", document3, documents) # ~ 0.4

# arr = ["9", "8", "7", "10", "11"]
# p( 
#   arr.sort do |x, y|
#     y.to_i <=> x.to_i
#   end
# )

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 
