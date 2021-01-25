# Write a program that asks the user whether they want the program to 
# print "something", then print it if the user enters y. Otherwise, 
# print nothing.

puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp.downcase
if answer == "y"
  puts "something"
end

# refactored
puts ">> Do you want me to print something? (y/n)"
choice = gets.chomp.downcase
puts "something" if choice == "y"