# What will the following code print? Why? Don't run it until 
# you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# this prints 'Breakfast' the implicit return exits the method with the 
# string 'Breakfast' as the value and the 'Dinner' line is never 
# executed.  