# a = 0
# if x == 5
#   puts "how can this be true?"
# else
#   puts "it is not true"
# end

# p (32 * 4) >= 129
# p false != !true 
# p true == 4
# p false == (847 == '874')
# p (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
# # false, false, false, true, true

# def all_caps(string)
#   return string.upcase if string.length > 10
#   string
# end

# puts all_caps("hello world")

# puts "Please pick a number between 0 and 100 inclusively"
# number = gets.chomp.to_f


# if number < 0
#   puts "Please pick a positive integer" 
# elsif number <= 50
#   puts "Your number #{number.to_i} is between 0 and 50"
# elsif number <= 100
#   puts "Your number #{number.to_i} is between 51 and 100"
# else
#   puts "Your number #{number.to_i} is above 100"
# end

# # Snippet 1
# '4' == 4 ? puts("TRUE") : puts("FALSE")

# # Snippet 2
# x = 2
# if ((x * 3) / 2) == (4 + 4 - x - 3)
#   puts "Did you get it right?"
# else
#   puts "Did you?"
# end

# # Snippet 3
# y = 9
# x = 10
# if (x + 1) <= (y)
#   puts "Alright"
# elsif (x + 1) >= (y)
#   puts "Alright now!"
# elsif (y + 1) == x
#   puts "ALRIGHT NOW!"
# else
#   puts "ALRIGHTY RIGHT RIGHT NOW!"
# end

# def equal_to_four(x)
#   if x == 4
#     puts "Yup"
#   else
#     puts "Nope"
#   end
# end

# equal_to_four(5)

# (32 * 4) >= "129" # => error
# 847 == '874'