require "pry"
# def doubler(start)
#   puts start
#   if start < 10
#     doubler(start * 2)
#   end
# end

# x = [1, 2, 3, 4, 5]
# each_method = x.each do |a|
#   a + 1
# end

# p each_method

# each method returns the original array(the caller,
# array each was called on, or self (array))

# Write a while loop that takes input from the user,
# performs an action, and only stops when the user types "STOP".
# Each loop can get info from the user.

# prompt for user input (gets) prompt then take input prompt.  
# takes input "STOP" to stop.  get user info from each output
# use while loop do/while counts?

# loop do
#   puts "Tell me when to stop!"
#   answer = gets.chomp
#   if answer == "STOP"
#     break
#   end
# end

# answer = ""
# while answer != "STOP"
#   puts "Tell me when to stop!"
#   answer = gets.chomp
# end

# Write a method that counts down to zero using recursion

# input number output number down to zero inclusively rules use recursion
# method needs to call itself.
# mental model: define method takes 1 argument(integer).  output integer
# evaluate if integer > 0 then call method with parameter - 1
# example 3 3 2 1 0

def countdown(number)
  puts number unless number < 0
  if number > 0
    countdown(number - 1)
  end
end

countdown(-3)
