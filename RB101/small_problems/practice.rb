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


def digit_list(num)
  digits = []
  loop do
    num, digit = num.divmod(10)
    digits.unshift(digit)
    break if num == 0
  end
  digits
end

p digit_list(12345) # == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
