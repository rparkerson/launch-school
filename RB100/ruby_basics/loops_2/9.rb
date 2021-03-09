=begin
The following code increments number_a and number_b by either 0 or 1.
loop is used so that the variables can be incremented more than once,
however, break stops the loop after the first iteration. Use next to
modify the code so that the loop iterates until either number_a or
number_b equals 5. Print "5 was reached!" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  break
end

P
input: loop
output: string(5 was reached!)
rules:
explicit:
Use the given code
use next until number_a or number_b is 5
print "5 was reached!" on the final interation of loop
implicit:

E
"5 was reached"

D
integers

A
initialize 'number_a' set to 0
initialize 'number_b' set to 0
loop through a block
  increament 'number_a' by 0 or 1
  increament 'number_b' by 0 or 1
  next unless 'number_a' or 'number_b' is equal to 5 
    (else starts next iteration)
  
  print "5 was reached!"
  break out of loop
=end

# The following code increments number_a and number_b by either 0 or 1. 
# loop is used so that the variables can be incremented more than once, 
# however, break stops the loop after the first iteration. Use next to 
# modify the code so that the loop iterates until either number_a or 
# number_b equals 5. Print "5 was reached!" before breaking out of the 
# loop.

number_a = 0
number_b = 0

loop do
  p number_a += rand(2)
  p number_b += rand(2)

  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  if  number_a != 5 || number_b != 5
    next
  else
    puts "5 was reached!"
    break
  end
end

number_a = 0
number_b = 0

loop do
  p number_a += rand(2)
  p number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  
  puts "5 was reached!"
  break
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2) 
  if number_a == 5 || number_b == 5
    puts "5 was reached"
    break
  else
    next  
  end
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || next unless number_b == 5
  puts "5 was reached!"
  break
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
  next
end
