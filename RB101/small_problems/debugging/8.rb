=begin
Password
The following code prompts the user to set their own password if they haven't
done so already, and then prompts them to login with that password. However,
the program throws an error. What is the problem and how can you fix it?

Once you get the program to run without error, does it behave as expected?
Verify that you are able to log in with your new password.

Neither of the two method definitions `set_password` or `verify_password` are
defined in a way to use the object the local variable `password` references.

The return value of the `set_password` method definition is not used or saved,
as a result.

The conditional on `line 14` referenced the local variable `password` that
is not accessible within scope of the method definition, which raised an
exception.
=end

# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   set_password
# end

# verify_password

# One possible solution
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password   # assignment was not used so it is not needed
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password # saved return value
end

verify_password(password) # passed in parameter
