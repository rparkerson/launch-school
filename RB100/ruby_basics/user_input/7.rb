# In the previous exercise, you wrote a program to solicit a password. 
# In this exercise, you should modify the program so it also requires a 
# user name. The program should solicit both the user name and the 
# password, then validate both, and issue a generic error message if one 
# or both are incorrect; the error message should not tell the user which 
# item is incorrect.

USERNAME = "admin"
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  name_try = gets.chomp
  puts ">> Please enter your password:"
  password_try = gets.chomp
  break if name_try == USERNAME && password_try == PASSWORD
   puts "Authorization failed!"
end
  puts "Welcome!"
  
USERNAME = "admin"
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  name_try = gets.chomp
  puts ">> Please enter your password:"
  password_try = gets.chomp
  if name_try == USERNAME && password_try == PASSWORD
    puts "Welcome!"
    break
  end
   puts "Authorization failed!"
end

USERNAME = "admin"
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  user_name = gets.chomp     # variable name changed
  puts ">> Please enter your password:"
  password_try = gets.chomp
  break if user_name == USERNAME && password_try == PASSWORD
   puts "Authorization failed!"
end
  puts "Welcome!"

USERNAME = "admin"
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  user_name = gets.chomp     # variable name changed
  puts ">> Please enter your password:"
  password_try = gets.chomp
  (user_name == USERNAME && password_try) == PASSWORD ? (break puts "Welome!") : (puts "Authorization failed!")
end