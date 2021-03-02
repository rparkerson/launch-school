=begin
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
A user passes in two numbers, and the calculator will keep computing the 
sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it,
he got an error. Something about the limit variable. What's wrong with the
code?
the variable limit isn't visible or accessable within the method

How would you fix this so that it works?
I would change limit to a constant 15 which makes sense in this context
as it doesn't change and the program can be easily be modified later
=end

LIMIT = 15

def fib(first_num, second_num)
  while first_num + second_num < LIMIT
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#  Alternative (pass limit in as an argument)
def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"
