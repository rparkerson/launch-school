=begin
fizzbuzz
Write a method that takes two arguments: the first is the starting number,
and the second is the ending number. Print out all numbers between the two
numbers, except if a number is divisible by 3, print "Fizz", if a number
is divisible by 5, print "Buzz", and finally if a number is divisible by 3
and 5, print "FizzBuzz".

Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz,
13, 14, FizzBuzz

P
input: two arguments (integers(starting, ending))
output: print all numbers with string substitution
rules
explicit:
write a method
print all numbers between 2 argument numbers
substitute 'Fizz' if divisible by 3
substitue 'Buzz' if divisible by 5
substitute 'FizzBuzz' if divisible by 3 and 5
questions:
do we return as number or strings? - integers with strings
return formatting with commas? - not explicitly stateed

E
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz,
13, 14, FizzBuzz

D
range

A

- print out a range of numbers start number to end number
  - if divisible by 3 and 5 replace with "FizzBuzz"
  - check if divisble by three replace with "Fizz"
  - if divisible by 5 replace with "Buzz"
  - else print number
=end

def fizzbuzz(num1, num2)
  result = (num1..num2).map do |num|
    case
    when num % 3 == 0 && num % 5 == 0 then 'FizzBuzz'
    when num % 3 == 0                 then 'Fizz'
    when num % 5 == 0                 then 'Buzz'
    else num
    end
  end

  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz,
# 13, 14, FizzBuzz

# Refactored
def fizzbuzz(num1, num2)
  result = (num1..num2).map do |num|
    case
    when num %  3 == 0 then 'Fizz'
    when num %  5 == 0 then 'Buzz'
    when num % 15 == 0 then 'FizzBuzz'
    else num
    end
  end

  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz,
# 13, 14, FizzBuzz

# Provided Solution
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end
