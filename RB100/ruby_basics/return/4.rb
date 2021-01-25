# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# this executes teh meal method which will print dinner internally
# then return
# Breakfast which will then be printed by the puts method call on meal,
# outside the method. output and return value arn't always the same.