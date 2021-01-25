# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# this will display the return value of meal which is the evaluated result
# of the last line executed within the method which is the puts call which 
# returns nil.  so this will output nil after printing 'Dinner'.