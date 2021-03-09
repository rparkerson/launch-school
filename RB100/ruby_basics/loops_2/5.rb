=begin
Modify the code below so that the user's input gets added to the numbers
array. Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
end
puts numbers

P
input: string(converted to integer)
output: integers(from numbers array)
rules
explicit:
add 5 numbers from the user to nuumbers array
stop the loop when array size is 5 elements
implicit:
no check of user input

E
using given example loop:
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
end
puts numbers

Enter any number:
1
Enter any number:
2
Enter any number:
3
Enter any number:
4
Enter any number:
5
1
2
3
4
5

D
arrays

A
initialize 'numbers' and set to an empty array
create a loop
  prompt user for number
  initialize 'input' variable which references user response saved as integer
  append 'input' to number (repeat loop)
  break if 'numbers' size is equal to 5
=end

# Modify the code below so that the user's input gets added to the 
# numbers array. Stop the loop when the array contains 5 numbers./

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

numbers = []

loop do
  puts 'Enter any number:'   
  input = gets.chomp.to_i    # collects a 6th number that isn't saved
  if numbers.size < 5
    numbers << input
  else
    break
  end
end
puts numbers
p numbers
