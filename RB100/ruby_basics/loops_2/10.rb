=begin
Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

P
input:
output: string ("Hello!" twice)
rules
explicit:
use the given code
use a while loop
print "Hello!" twice
implicit:

E
Hello!
Hello!

D
strings

A
define greeting method that prints hello
initialize 'number_of_greetings' that references 2
loop while 'number_of_greetings' > 0
  invoke 'greeting' method
  decrement 'number_of_greetings' by 1
=end

# Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts "Hello!"
end

number_of_greeting = 2

while number_of_greeting > 0
  greeting
  number_of_greeting -= 1
end

def greeting
  puts "Hello!"
end

number_of_greeting = 2

while
  number_of_greeting.times {greeting}
  break
end
