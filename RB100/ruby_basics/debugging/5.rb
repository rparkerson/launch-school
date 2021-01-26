# We want to iterate through the numbers array and return a new array 
# containing only the even numbers. However, our code isn't producing 
# the expected output. Why not? How can we change it to produce the 
# expected result?

# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.map do |n|
#   n if n.even?
# end

# p even_numbers # expected output: [2, 6, 8]

# This returns the result of the if statement when the argument is even
# however the if statement is not executed and nothing is returned(nil)
# on odd numbers so this prints a new array with nil as the odd numbers.
# we can use the select method instead which only returns the true
# expressions arguments for the block.

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n| 
  n.even?
end

p even_numbers
