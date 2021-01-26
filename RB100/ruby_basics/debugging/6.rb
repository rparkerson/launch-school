# You want to have a small script delivering motivational quotes, but 
# with the following code you run into a very common error message: 
# no implicit conversion of nil into String (TypeError). What is the 
# problem and how can you fix it?

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
puts 'Yoda says:'
puts '"' + get_quote('Yoda') + '"'
puts 'Einstein says:'
puts '"' + get_quote('Einstein') + '"'

# The problem was the last executed line in the method returned nil since
# there was no implicit return and all the if statements were seperate.
# nil was the returned result of the Einstein if statement when it was 
# false; whenever Einstein was not passed in as the argument. This
# produced a type error.
