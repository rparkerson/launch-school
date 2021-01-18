# example.rb

# conditional.rb

# puts "Put in a number"
# a = gets.chomp.to_i

# if a == 3
#   puts "a is 3"
# elsif a == 4
#   puts "a is 4"
# else
#   puts "a is neither 3, nor 4"
# end

# x = 3
# # Example 1
# if x == 3
#   puts "x is 3"
# end

# # Example 2
# if x == 3
#   puts "x is 3"
# elsif x == 4
#   puts "x is 4"
# end

# # Example 3
# if x == 3
#   puts "x is 3"
# else
#   puts "x is not 3"
# end

# # Example 4: must use "then" keyword when using 1-line syntax
# if x == 3 then puts "x is 3" end
# if x == 3 then puts "x is 3"; elsif x == 4 then puts "x is 4" end
# if x == 3 then puts "x is 3"; else puts "x is not 3" end

# puts "x is 3" if x == 3
# puts "x is NOT 3" unless x == 3
# puts "x is 3" if x == 3
# puts "x is 4" if x == 4 
# x == 3 ? puts("x is 3") : puts("x is not 3")

# if x && y || z
#   # do something
#   puts "Doing something"
# end

# Ternary operator example

# p true ? "this is true" : "this is not true"

# case_statement.rb

# a = 5

# case a
# when 5
#   puts "a is 5"
# when 6
#   puts "a is 6"
# else
#   puts "a is neither 5, no 6"
# end

# if_statement.rb

# a = 5

# if a == 5
#   puts "a is 5"
# elsif a == 6
#   puts "a is 6"
# else
#   puts "a is neither 5, nor 6"
# end

# case_statement.rb <-- refactored

# a = 5

# answer = case a
#   when 5
#     "a is 5"
#   when 6
#     "a is 6"
#   else
#     "a is neither 5, nor 6"
#   end

# puts answer

# case_with_no_arg_statements.rb

# a = 5

# answer = case
#   when a == 5
#     "a is 5"
#   when a == 6
#     "a is 6"
#   else
#     "a is neither 5, nor 6"
#   end
  
#   puts answer

#   a = 5

# case
# when a == 5
#   puts "a is 5"
# when a == 6
#   puts "a is 6"
# else
#   puts "a is neither 5, nor 6"
# end

# a = 'false'
# if a 
#   puts "how can this be true?"
# else
#   puts "it is not true"
# end

# if x = 5
#   puts "how can this be true?"
# else
#   puts "it is not true"
# end

# x = 5 ? puts("how can this be true?") : puts("it is not true")