=begin
Sum Square - Square Sum
Write a method that computes the difference between the square of the
sum of the first n positive integers and the sum of the squares of the
first n positive integers.

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0

P
input: integer
output: return integer
explicit rules:
write a method
finds the difference between 2 numbers
number 1 is the square of the sum of the first n positive integers
number 2 is the sum of the squares of the first n positive integers
n is the argument passed in
implicit:
return the calculated value

E
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

D
ranges
integers

A
- calculate the 2 numbers seperately
- find the difference of number 1 minus number 2
- return result
=end

def sum_square_difference(num)
  square_of_sum = (1..num).sum**2 
  sum_of_squares = (1..num).reduce { |sum, n| sum + n**2 }
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

def sum_square_difference(num)
  (1..num).sum**2 - (1..num).reduce { |sum, n| sum + n**2 }
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150

# Provided Solution
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end
