# Write a program that obtains two Integers from the user, then prints 
# the results of dividing the first by the second. The second number 
# must not be 0, and both numbers should be validated using this method:

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# This method returns true if the input string can be converted to an 
# Integer and back to a string without loss of information, false 
# otherwise. It's not a perfect solution in that some inputs that 
# are otherwise valid (such as 003) will fail, but it is sufficient 
# for this exercise.

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# loop do
#   puts ">> Please enter the numerator:"
#   numerator = gets.chomp

#   if valid_number?(numerator)
#     numerator = numerator.to_i
#     break
#   else
#     puts "Invalid input. Only intergers are allowed."
#     next
#   end
#   break
# end

# denominator = nil
# loop do
#   puts ">> Please enter the denominator"
#   denominator = gets.chomp

#   if denominator == "0"
#     puts "Invalid input. A denominator of 0 is not allowed."
#     next
#   elsif valid_number?(denominator)
#     denominator = denominator.to_i
#   else
#     puts "Invalid input. Only intergers are allowed."
#     next
#   end
#   puts ">> #{numerator} / #{denominator} is #{numerator/denominator}"
#   break
# end

# # example solution
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# loop do
#   puts '>> Please enter the numerator:'
#   numerator = gets.chomp

#   break if valid_number?(numerator)
#   puts '>> Invalid input. Only integers are allowed.'
# end

# denominator = nil
# loop do
#   puts '>> Please enter the denominator:'
#   denominator = gets.chomp

#   if denominator == '0'
#     puts '>> Invalid input. A denominator of 0 is not allowed.'
#   else
#     break if valid_number?(denominator)
#     puts '>> Invalid input. Only integers are allowed.'
#   end
# end

# result = numerator.to_i / denominator.to_i
# puts "#{numerator} / #{denominator} is #{result}"

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

a = true
numerator = nil
loop do
  if a
    loop do
      puts ">> Please enter the numerator:"
      numerator = gets.chomp
      break a = false if valid_number?(numerator) 
      puts "Invalid input. Only intergers are allowed."
    end
  end
  
  puts ">> Please enter the denominator"
  denominator = gets.chomp
  if denominator == "0"
    puts "Invalid input. A denominator of 0 is not allowed."
  elsif valid_number?(denominator)
    break puts ">> #{numerator} / #{denominator} is #{numerator.to_i/denominator.to_i}"
  else
    puts "Invalid input. Only intergers are allowed."
  end
end

# seperate loops
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# loop do
#   puts ">> Please enter the numerator:"
#   numerator = gets.chomp
  
#   break if valid_number?(numerator) 
#   puts "Invalid input. Only intergers are allowed."
#   end
# end
  
#   denominator = nil

#   puts ">> Please enter the denominator"
#   denominator = gets.chomp

#   if denominator == "0"
#     puts "Invalid input. A denominator of 0 is not allowed."
#   elsif valid_number?(denominator)
#     puts ">> #{numerator} / #{denominator} is #{numerator.to_i/denominator.to_i}"
#     break
#   else
#     puts "Invalid input. Only intergers are allowed."
#   end
# end

# refactored student example
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# denominator = nil
# loop do
# puts ">>Please enter the numerator:"
# numerator = gets.chomp
#   if valid_number?(numerator)
#     loop do
#       puts ">>Please enter the denominator:"
#       denominator = gets.chomp
#       if valid_number?(denominator) == false
#         puts "Invalid input. Only integers are allowed."
#       else
#         puts ">>Invalid input. A denominator of 0 in not allowed:"
#       end
#       break if valid_number?(denominator) && denominator.to_i != 0
#     end
#   else valid_number?(numerator) == false
#     puts "Invalid input. Only integers are allowed."
#   end
#   break if valid_number?(numerator)
# end

# puts "#{numerator} / #{denominator} is #{numerator.to_i/denominator.to_i}"