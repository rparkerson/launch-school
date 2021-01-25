# Write a program that requests two integers from the user, adds them 
# together, and then displays the result. Furthermore, insist that one 
# of the integers be positive, and one negative; however, the order in 
# which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers 
# are entered, and start over if the requirement is not met.


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts ">> Please enter a positive or negative integer:"
  num1 = gets.chomp
  puts ">> Please enter a positive or negative integer" 
  num2 = gets.chomp

  if !(valid_number?(num1)) || !(valid_number?(num2))
    puts ">> Invalid input. Only non-zero integers are allowed."
    next
  end
  num1 = num1.to_i
  num2 = num2.to_i
      # could be simply: num1 * num2 > 0
  if !(num1.negative? && num2.positive?) && !(num1.positive? && num2.negative?)
    puts ">> Sorry. One integer must be positve, one must be negative."
    puts "Please start over."
    next
  end
  break puts "#{num1} + #{num2} = #{num1 + num2}"
end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts ">> Please enter a positive or negative integer:"
  num1 = gets.chomp
  puts ">> Please enter a positive or negative integer" 
  num2 = gets.chomp

  unless valid_number?(num1) && valid_number?(num2)
    puts ">> Invalid input. Only non-zero integers are allowed."
    next
  end
  num1 = num1.to_i
  num2 = num2.to_i
  if num1 * num2 > 0
    puts ">> Sorry. One integer must be positve, one must be negative."
    puts "Please start over."
    next
  end
  break puts "#{num1} + #{num2} = #{num1 + num2}"
end