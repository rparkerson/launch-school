# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51, and 100
# or above 100

# input number between 0 and 100
# output one of 3 ranges that the number is between reports back 
# report back through output in terminal requirement
# requirement inclusive? negative or positive?
# mental model - check input between range save input convert to integer 
# check if within 2 ranges or over print the range integer is in.


puts "Pick a positve number between 0 and 100"
number = gets.chomp.to_i
case number
when (0..50)
  puts "Your number: #{number}, is between 0 and 50"
when (51..100)
  puts "Your number: #{number}, is between 51"
when (100..)
  puts "Your number: #{number}, is greater than 100"
else
  puts "You done messed up"
end
