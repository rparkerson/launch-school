=begin
Fibonacci Number Location By Length
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
such that the first 2 numbers are 1 by definition, and each subsequent number
is the sum of the two previous numbers. This series appears throughout the
natural world.

Computationally, the Fibonacci series is a very simple series, but the
results grow at an incredibly rapid rate. For example, the 100th Fibonacci
number is 354,224,848,179,261,915,075 -- that's enormous, especially
considering that it takes 6 iterations before it generates the first 2 digit
number.

Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument.
(The first Fibonacci number has index 1.)

Examples:

find_fibonacci_index_by_length(2) == 7         # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12        # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

You may assume that the argument is always greater than or equal to 2.

P
input: integer(number of digits of fibonacci number)
output: integer (index of the first occurance of argument digits)
rules
explicit:
return an integer
the argument is always 2 or greater
The first Fibonacci number has index 1
Use the Fibonacci series (1,1,2,3,5...)
implicit:
question:
Does program speed need to be taken into account ? -not specified

E
find_fibonacci_index_by_length(2) == 7      # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12     # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

D
Arrays

A
- Calculate a method to find the fibonacci sequence
  - loop method fibonacci sequence and store result it to an array
- Continue calculating until fib number digits size is equal to argument
  - convert fib number to string to check size
- once match is found return the array size (which equals index)

calculate a method to find fibonacci sequence and outputs result
  check if index exists if not continue sequence until index is added
  can pass in index of fib sequence starting with index 3(result 2)
  fib is sum = 1 + 1
  sum += previous number 
  return an array
=end

# This approach works, but is somewhat slow for high numbers
def fibonacci(index)
  fib_arr = [0, 1, 1]
  while fib_arr[index] == nil
    new_num = fib_arr[-2] + fib_arr.last
    fib_arr << new_num
  end
  fib_arr
end

def find_fibonacci_index_by_length(digits)
  index = 7  # lowest possible 2 digit result value
  fib_arr = fibonacci(index)
  loop do
    fib_digits = fib_arr.last.to_s.size
    fib_arr << fib_arr[-2] + fib_arr.last
    break if fib_digits >= digits
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(2) == 7      # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12     # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

#  Provided solution
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7      # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12     # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
