=begin
P
input: integer
output: integer
requirements:
sum or product inclusively
questions:
is input validation required? no
mental model:
ask the user for a positive integer and ask if they want the sum or product
Then calculate and output the range and sum or product.
E
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
D
array
A
prompt the user for a positive integer value
save as a integer variable
prompt the user to enter sum or product
if sum find the sum of 1 through value
if product find the product of 1 through value
Output result as a string
=end

def sum(number)
  (1..number).sum
end

def product(number)
  (1..number).reduce(:*)
end

puts ">> Please enter an integer greater than 0:"
value = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  puts "The sum of the integers between 1 and #{value} is #{sum(value)}."
elsif operation == 'p'
  puts "The product of the integers between 1 and #{value} is #{product(value)}."
else
  puts ">> Invalid input."
end

#  Further Exploration (with number validation)
def compute_sum(number)
  (1..number).reduce(:+)
end

def compute_product(number)
  (1..number).reduce(:*)
end

def valid_number?(number)
  number.to_i.to_s == number && number.to_i > 0
end

def valid_operation?(operation)
  operation == 's' || operation == 'p'
end

def get_number
  number = nil
  loop do
    number = gets.chomp
    break if valid_number?(number)
    puts ">> Please pick a valid positive integer."
  end
  number.to_i
end

def get_operation
  operation = nil
  loop do
    operation = gets.chomp
    break if valid_operation?(operation)
    puts ">> Please pick a valid operation."
  end
  operation
end

def display_results(number, operation)
  if operation == 's'
    sum = compute_sum(number)
    puts "The sum of the integers between 1 and #{number} is #{sum}."
  elsif operation == 'p'
    product = compute_product(number)
    puts "The product of the integers between 1 and #{number} is #{product}."
  else
    puts ">> Invalid input."
  end
end  

puts ">> Please enter an integer greater than 0:"
number = get_number

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = get_operation

display_results(number, operation)
