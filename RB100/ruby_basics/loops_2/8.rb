=begin
Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  puts number
end

P
input: loop
output: integers(even numbers 1 - 10)
rules
explicit:
use next
print even numbers from 1 to 10
use the given code

E
2
4
6
8
10

D
integers

A
intitialize 'number' to reference 0
loop through a block until 'number' is equal to 10
  reassign 'number' to 'number' + 1
  next if 'number' is odd
    print 'number'
=end

# Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

number = 0

until number == 10
  number += 2
  puts number
next if false
end

number = 0

until number == 10
  number += 1
  next if number % 2 != 0
  puts number
end

# Why did next have to be placed after the incrementation of number 
# and before #puts?  The next will loop infinately if it is before
# the incrementation of number and if it is after #puts than it wont 
# skip before the number are printed

