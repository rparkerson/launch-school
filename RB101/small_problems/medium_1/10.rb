=begin
Fibonacci Numbers (Last Digit)
In the previous exercise, we developed a procedural method for computing
the value of the nth Fibonacci numbers. This method was really fast,
computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last
digit of the nth Fibonacci number.

Examples:

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

P
input: integer (nth number in fibonacci sequence)
output: integer (last digit of fibonacci sequence number at nth position)
rules
explicit:
write a method that returns the last digit of the nth fibonacci number
implicit:
calculate it to at least 123 million so will not be able to use last solution

E
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

D
integers and array

A
- find the fibonacci number and then take the last digit
OR
- find a pattern within the sequence and calculate last digit using that
OR
- only keep track of the last digit in the fib sequence to save memory/stack
OR
- only calculate the number using the nth place 
- save using scientific notation

A
for a number over 100_000
- divide nth into smaller sections
- use the answer from the smaller sections as the first and last values
- calculate the next section using first and last values

- check if nth is less than 100,000
  - if not divide number by 10 and have remainder value
  - calculate first at tenth, and last at tenth + 1
  - if remainder not == 0 then calculate fib(first, last, remainder)
=end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  
  last
end

# WIP
def custom_fibonacci(first, last, start)
  first, last = first, last
  start.upto(nth) do
    first, last = last, first + last
  end
  
  last
end

# WIP
def medium_fibonacci(nth)
  section = nth
  while section < 100_000
    tenth, remainder =  section.divmod(10)
    p tenth; p remainder
    first, last = fibonacci(tenth), fibonacci(tenth + 1)
    custom_fibonacci() unless remainder == 0
    section = tenth + remainder
  end
end

# WIP
def fibonacci_last(nth)
  if nth < 100_001
    fib = fibonacci(nth)
    "#{fib.digits.shift} (the #{nth}th Fibonacci number is #{fib})"
  elsif nth < 100_000_008
    med_fib = medium_fibonacci(nth)
    "#{med_fib.digits.shift} (this is a #{med_fib.to_s.size} digit number)"
  else
    big_fib = big_fibonacci(nth)
  end
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

# Provided Solution
def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last(123456789) # -> 4

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last(123456789) # -> 4
