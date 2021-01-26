# When the user inputs 10, we expect the program to print The result is 
# 50!, but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.to_i

puts "The result is #{multiply_by_five(number)}!"

# invoking the * method on a string behaves differently than using it
# on an integer.  number should be converted to an integer with .to_i
