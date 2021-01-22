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
