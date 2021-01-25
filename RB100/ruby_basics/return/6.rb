# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# The meal invocation will run only the first line in the method defition
# due to the explicit return 'Breakfast' is returned and nothing else is run.
# This return value is then printed; 'Breakfast' is the only output.