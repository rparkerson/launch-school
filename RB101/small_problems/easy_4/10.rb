=begin
In the previous exercise, you developed a method that converts non-negative
numbers to strings. In this exercise, you're going to extend that method
by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string
representation.

You may not use any of the standard conversion methods available in Ruby,
such as Integer#to_s, String(), Kernel#format, etc. You may, however,
use integer_to_string from the previous exercise.

P 
input: integer(negative positive or 0)
output: string(sign in front)
rules
explicit:
don't use standard conversion methods
can use integer_to_string from the previous exercise
implicit:
add the sign(+ or -) on all strings except 0
only accept integers

Examples

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

D
arrays

A
given an integer 'number'
check if number is zero
check if number is negative
else number is positive
remove and save sign if present
use removed sign number with integer_to_string to convert to string
return string version of 'number' with + if positive or - if negative 0 = '0'
=end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(number)
  return '0' if number == 0
  if number < 0
    '-' + integer_to_string(-number)
  else 
    '+' + integer_to_string(number)
  end
end

def integer_to_string(number)
  string = ''
  loop do
    number, digit = number.divmod(10)
    string.prepend(DIGITS[digit])
    break if number == 0
  end
  string
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'

#  Futher Exploration (refactor below to just one integer_to_string call)

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

#  Refactored
def signed_integer_to_string(number)
  string = integer_to_string(number.abs)
  case number <=> 0
  when -1 then "-#{string}"
  when +1 then "+#{string}"
  else         string
  end
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'

#  Refactored
def signed_integer_to_string(number)
  string = integer_to_string(number.abs)
  prefix = ['', '+', '-'][number <=> 0]
  prefix + string
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'

#  Refactored
def integer_to_string(number)
  string = ''
  number.digits.each { |char| string.prepend(DIGITS[char]) }
  string
end

def signed_integer_to_string(number)
  ['', '+', '-'][number <=> 0] + integer_to_string(number.abs)
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'
