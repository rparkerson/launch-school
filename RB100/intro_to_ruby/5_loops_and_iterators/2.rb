# Write a while loop that takes input from the user, performs an action,
# and only stops when the user types "STOP". Each loop can get info from 
# the user.

# takes input from user output performed action takes more user input 
# input performs action until user input is "STOP"
answer = ""

while answer != "STOP"
  puts "How are you today? (tell me when to STOP)"
  answer = gets.chomp
  puts "#{answer}, you say?"
end
