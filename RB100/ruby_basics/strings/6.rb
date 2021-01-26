# Using the following code, capitalize the value of state then print 
# the modified value. Note that state should have the modified value 
# both before and after you print it.

# state = 'tExAs'

# Expected output:

# Texas

state = 'tExAs'
state = state.capitalize
puts state

state = 'tExAs'
state.capitalize!
puts state

state = 'tExAs'
state = state[0].upcase + state.downcase[(1..)]
puts state

