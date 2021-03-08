=begin
Using a while loop, print 5 random numbers between 0 and 99. 
The code below shows an example of how to begin solving this exercise.

numbers = []

while <condition>
  # ...
end

P 
input: 
output: numbers (5 random numbers)
rules
explicit:
numbers between 0 and 99
given format numbers = []
implicit:
use arrays

questions:
what is meant by between? inclusive

Example output (your numbers will most likely be different):

62
96
31
16
36

D
Arrays

A
initialize an empty array 'numbers'
while 'numbers' array is < 5 elements in length
  generate a number between 0 through 99
  append number into 'numbers'
  print all elements in numbers
=end

numbers = []

while numbers.count < 5
  numbers.push(rand 100)
end
puts numbers

numbers = []

5.times {numbers.push(rand 100)}
while numbers.count > 0
  p numbers.pop
end

5.times {p rand 100}

numbers = []

while numbers.count < 5
 p numbers.unshift(rand 100).first
end

numbers = (0..99).to_a.shuffle

while numbers.size > 95
  p numbers.pop
end

numbers = []

while numbers.size < 5
  numbers << p(rand 100)
end
