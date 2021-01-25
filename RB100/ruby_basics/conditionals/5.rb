# What will the following code print? Why? Don't run it until you've 
# attempted to answer.

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# This will print "My favorite number is 7."
# Integers have a value of true which is what the value of the variable 
# number points to. Every expression in Ruby has a truthy value except
# nil and false.  So the first part of the if statement prints with the
# variable value 7 put in the string using string interpolation.