require 'pry'
=begin
Double Doubles
A double number is a number with an even number of digits whose left-side
digits are exactly the same as its right-side digits. For example, 44,
3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument,
unless the argument is a double number; double numbers should be
returned as-is.

Examples:

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

Note: underscores are used for clarity above. Ruby lets you use
underscores when writing long numbers; however, it does not print
the underscores when printing long numbers. Don't be alarmed if you
don't see the underscores when running your tests.

P
input: integer
output: return integer(2 times the number or number -if double number)
rules
explicit:
if the number is a double number return it
a double number is the same number on the left side and right side
a double number is an even number of digits
underscore are not expected as output
question:
are floats accepted as numbers? -no

E
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

D
array

A
- find if the number is a double number
  - return double number
- otherwise return 2 times the number

- convert integer to an array of integers digits *digits
- set the center index variable
- count the number of digits
  - if odd AND
    -if the first half of array is equal to the second half of array 
      - return original number
  - else return integer times 2
=end

def twice(num)
  digits = num.digits.reverse
  mid_idx = digits.size / 2

  if digits.size.even? && digits[0..(mid_idx - 1)] == digits[mid_idx..-1]
    num
  else
    num * 2
  end
end

p twice(37) #== 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# Refactored
def twice(num)
  digits = num.digits.reverse
  mid_idx = digits.size / 2
  left_side = mid_idx.zero? ? [] : digits[0..(mid_idx - 1)]
  right_side = digits[mid_idx..-1]
  
  left_side == right_side ? num : num * 2
end

p twice(37) #== 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# Refactored
def twice(num)
  digits = num.digits.reverse
  mid_idx = digits.size / 2
  left_side = digits[0..(mid_idx - 1)]
  right_side = digits[mid_idx..-1]
  
  !mid_idx.zero? && left_side == right_side ? num : num * 2
end

p twice(37) #== 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

def twice(num)
  str = num.to_s
  str[0...(str.size/2)] == str[(str.size/2)..-1] ? num : num * 2
end

p twice(37) #== 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

def twice(num)
  digits = num.to_s.chars
  half = digits.size / 2
  digits.size.even? && digits.first(half) == digits.last(half) ? num : num * 2
end

p twice(37) #== 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
