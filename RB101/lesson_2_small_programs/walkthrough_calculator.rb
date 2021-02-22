require 'pry'
=begin
P
input: asks for 2 numbers, and operation (+ - * /)
output: print the result to screen
use a method(s) definition
use Kernel.gets() for user input and Kernel.puts() to display output
use .chop()
questions:
we should put in the numbers in the order they were received? yes
do we need to validate numbers? no, will use just integers
can we take floats, integers etc. for precise rounding? use integers for now
E
p calculator(2, 3, 'add')      # => 5
p calculator(2, 3, 'subtract') # => -1
p calculator(2, 3, 'multiply') # => 6
p calculator(2, 3, 'divide')   # => 0
D
strings
case statement conditionals
A
Prompt for 2 numbers (no check at this stage) with .gets
store numbers
prompt for operation type
feed inputs into method calculator
output result with puts
=end

def calculator(num1, num2, operation)
  case operation.downcase
  when 'add'
    Kernel.puts("#{num1 + num2}")
  when 'subtract'
    Kernel.puts("#{num1 - num2}")
  when 'multiply'
    Kernel.puts("#{num1 * num2}")
  when 'divide'
    Kernel.puts("#{num1 / num2}")
  else 
    Kernel.puts('That is not a valid operation.')
  end
end

Kernel.puts("Please select a number.")
num1 = Kernel.gets().to_i()

Kernel.puts("Please select a second number.")
num2 = Kernel.gets().to_i()

Kernel.puts("What type of operation would you like to perform: add, subtract, multiply, divide ?")
operation = Kernel.gets().chomp()

calculator(num1, num2, operation)      # => integer
