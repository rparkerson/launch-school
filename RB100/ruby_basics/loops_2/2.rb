=begin
Modify the following code so that the loop stops if number is equal to
or between 0 and 10.

loop do
  number = rand(100)
  puts number
end

P
input: loop
output: integer(until 0-10 is printed)
rules:
explicit:
given the loop code snippet
stop when number is between 0 and 10(inclusive?)
implicit:
must print out number first then exit(to see value of number)
questions:
inclusive range?

E

loop do
  number = rand(100)
  puts number
end
23
10

99
0

D
integers

A
loop through block
  initialize variable 'number' and set to random number from 1 through 99
  print 'number'
  if 'number' is equal 0 - 10 break loop
=end

# Modify the following code so that the loop stops if number is equal to 
# or between 0 and 10.

loop do
  number = rand(100)
  puts number

  break if number <= 10
end

loop do
  number = rand(100)
  puts number
  
  if number.between?(0, 10)
    break
  end
end

loop do
  number = rand(100)
  puts number
  
  if number >= 0 && number <= 10
    break
  end
end

loop do
  number = rand(100)
  puts number
  
  if (0..10).include? number
    break
  end
end

loop do number = rand(100); puts number
  break if number.between?(0, 10)
end

loop do
  puts number = rand(100)
  break if [*0..10][number]
end

loop do
  [*0..10][p number = rand(100)] ? break : 42
end

loop do
  break if [*0..10][p number = rand(100)]
end

loop do
  break if (0..10).include?(p number = rand(100))
end

loop do
  number = rand(100)
  puts number
  break if [*0..10][number]
end
