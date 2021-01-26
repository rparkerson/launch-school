# You come across the following code. What errors does it raise for the 
# given examples and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

p find_first_nonzero_among([0, 0, 1, 0, 2, 0])
p find_first_nonzero_among([1])

# this method find_first_nonzero_among only accepts one parameter but was
# given 6.  So the Argument error was raised. I altered the parameter in
# the method to take multiple arguments.  We can also change arguments
# to arrays.  the .each method won't work on integer class.

def find_first_nonzero_among(*numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

p find_first_nonzero_among(0, 0, 1, 0, 2, 0)
p find_first_nonzero_among(1)
