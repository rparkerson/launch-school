=begin
P
input:2 positive integers
output: integer (6 operations)
rules:
no need to validate
the first number is always first and the second number is second in operations
mental model:
prompt the user for 2 positive integers and print 6 operations peformed
on the integers.
E
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
D
integers
A
Prompt for the first number
set first number to first_number
prompt for the second number
set the second number to second_number
calculate the 6 operations (seperate each to a method)
*set a variable for each of the 6 operations*
print the 6 operations using string concatination
=end

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1**num2
end

puts "==> Enter the first number:"
first_number = gets.to_i

puts "==> Enter the second number:"
second_number = gets.to_i

puts "==> #{first_number} + #{second_number} = #{add(first_number, second_number)}"
puts "==> #{first_number} - #{second_number} = #{subtract(first_number, second_number)}"
puts "==> #{first_number} * #{second_number} = #{multiply(first_number, second_number)}"
puts "==> #{first_number} / #{second_number} = #{divide(first_number, second_number)}"
puts "==> #{first_number} % #{second_number} = #{remainder(first_number, second_number)}"
puts "==> #{first_number} ** #{second_number} = #{power(first_number, second_number)}"

#  Using iteration
OPERATORS = %i(+ - * / % **)

puts "==> Enter the first number:"
num1 = gets.to_i
puts "==> Enter the second number:"
num2 = gets.to_i

OPERATORS.each do |op|
  result = num1.send(op, num2)
  puts "==> #{num1} #{op} #{num2} = #{result}"
end

#  Further Exploration (floats instead of integers)
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1**num2
end

puts "==> Enter the first number:"
first_number = gets.to_f

puts "==> Enter the second number:"
second_number = gets.to_f

puts "==> #{first_number} + #{second_number} = #{add(first_number, second_number)}"
puts "==> #{first_number} - #{second_number} = #{subtract(first_number, second_number)}"
puts "==> #{first_number} * #{second_number} = #{multiply(first_number, second_number)}"
puts "==> #{first_number} / #{second_number} = #{divide(first_number, second_number)}"
puts "==> #{first_number} % #{second_number} = #{remainder(first_number, second_number)}"
puts "==> #{first_number} ** #{second_number} = #{power(first_number, second_number)}"
