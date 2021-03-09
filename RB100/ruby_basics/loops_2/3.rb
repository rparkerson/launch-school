=begin
Using an if/else statement, run a loop that prints "The loop was processed!"
one time if process_the_loop equals true. Print "The loop wasn't processed!"
if process_the_loop equals false.

process_the_loop = [true, false].sample

P
input:
output: string(was if true else wasn't if false)
rules
explicit:
print "msg 1" if 'process_the_loop' is true else "msg2" if false
use an if/else statment within a loop
implicit:
use process_the_loop variable provided
break out of the loop when true
use a loop within the if/else statement but only for process_the_loop = true

E
process_the_loop = [true, false].sample
"The loop was processed!"       # for true
""The loop wasn't processed!""  # when false

D
strings

A
assign value of 'process_the_loop'
if 'process_the_loop' is true
  create a loop
    print "The loop was processed!"
    break out of loop
else
  print "The loop wasn't processed"
=end

# Using an if/else statement, run a loop that prints 
# "The loop was processed!" one time if process_the_loop equals true.
# Print "The loop wasn't processed!" if process_the_loop equals false.

process_the_loop = [true, false].sample

loop do
  if process_the_loop == true    # can be refactored without == true
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end

  break
end

loop do
  if process_the_loop
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end

  break
end

if process_the_loop == true   # can be refactored without == true
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end


if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end
