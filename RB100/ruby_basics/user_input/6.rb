# Write a program that displays a welcome message, but only after the 
# user enters the correct password, where the password is a string that 
# is defined as a constant in your program. Keep asking for the password 
# until the user enters the correct password.

PASSWORD = "SecreT"
loop do
  puts ">> Please enter your password: "
  password = gets.chomp

  if password == PASSWORD
    puts "Welcome!"
    break
  else  
   puts ">> Invalid password!"
  end
end

PASSWORD = "SecreT"
loop do
  puts ">> Please enter your password: "
  password = gets.chomp
  break if password == PASSWORD
  puts ">> Invalid password!"
end
puts "Welcome!"

PASSWORD = "SecreT"
loop do
  puts ">> Please enter your password: "
  password_try = gets.chomp
  puts "Welcome!" if password_try == PASSWORD
  break if password_try == PASSWORD
  puts ">> Invalid password!"
end

PASSWORD = "SecreT"
loop do
  puts ">> Please enter your password: "
  password = gets.chomp
  puts password == PASSWORD ? "Welcome!" : ">> Invalid password!"
  break if password == PASSWORD
 end