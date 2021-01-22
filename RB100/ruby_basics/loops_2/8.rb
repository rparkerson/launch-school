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

