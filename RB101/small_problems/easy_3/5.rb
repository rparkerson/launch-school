=begin
P
input: integer/number
output: (implicit return of result)
rules:
use the multiply method
one argument
square is defined as the result of multiplying a number by itself
method name is square
mental model:
Use the multiply method and write a method(square) that takes one argument
and squares it.
E
square(5) == 25
square(-8) == 64
D
integers
A
create a method square that has one parameter
  multiply parameter by itself
implicit return of result
=end

def multiply(num1, num2)
  num1 * num2
end

def square(number)
  multiply(number, number) 
end

p square(5) == 25
p square(-8) == 64

#  Further exploration
def multiply(num1, num2)
  num1 * num2
end

def number_to_power(num, power)
  if power == 0 
    1
  elsif power > 0
    multiply([num], power).reduce(:*)
  elsif power < 0
    1.0 / multiply([num], power.abs).reduce(:*)
  end
end

p multiply(2, 3)
p number_to_power(5, 2)
p number_to_power(-8, 2)
p number_to_power(-3, 4)
p number_to_power(-3, 5)
p number_to_power(3, 0)
puts number_to_power(2, 0) == 1
puts number_to_power(2, 1) == 2
puts number_to_power(2, 2) == 4
puts number_to_power(2, -1) == 0.5
puts number_to_power(2, -2) == 0.25
puts number_to_power(-2, 0) == 1
puts number_to_power(-2, 1) == -2
puts number_to_power(-2, 2) == 4
puts number_to_power(-2, -1) == -0.5
puts number_to_power(-2, -2) == 0.25
