=begin
P
input: 6 integers
output: string
explicit requirements:
prompt the user for 6 numbers
save the first 5 in an array
print a message if the 6th number is in the array

questions:
do we need to validate the numbers? no
Are the elements in the array saved as string or integers? integers
Mental model:
Prompt the user for 6 numbers and print a message if the 6th appears in
the array of the first 5.
E
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
D
arrays
A
initialize an empty array
create an constant PLACES with the array of 1st through last
iterate through PLACES array
prompt the user user for a number
store the number in the array: numbers
repeat 5 times
prompt the user for the 6th number
set the the 6th number as a variable: last_number
check if the array numbers contains the variable last_number
print the last_number variable and if it appears in numbers
=end

PLACES = ['1st', '2nd', '3rd', '4th', '5th']

def prompt(place)
  puts "==> Enter the #{place} number:"
end

numbers = []

PLACES.each do |place|
  prompt(place)
  numbers << gets.to_i
end

prompt('last')
last_number = gets.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end
