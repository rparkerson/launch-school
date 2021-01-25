# What will the following code print? Why?
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# This prints the return value of the count_sheep method which is 5.
# The times method returns the integer it was called on.  The method
# count_sheep is run first and prints sheep 5 times then the number 5.
# sheep is the parameter to represent the numbers 0 through 4.  we
# invoke and then print the count_sheep method.