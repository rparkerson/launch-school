=begin
The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

Why is this and what are two possible ways to fix this?
This expression is trying to add an integer and a string without 
converting them.  This can be fixed by converting 42 to a string first.
Or string interpolation can be used which calls the to_s method on the
expression after it is evaluated
=end

# puts "the value of 40 + 2 is " + (40 + 2)

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{(40 + 2)}"
