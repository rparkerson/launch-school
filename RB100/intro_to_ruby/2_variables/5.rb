z = 0 
3.times do
  z += 1
end
puts z


y = 0 
3.times do
  y += 1
  x = y
end
puts x

# What does x print to the screen in each case?  Do they both give errors?
# Are the errors different?  Why?

# In case 1 x(or z) outputs 3 and in case 2 the output is an x is not defined.
# in the second case x is only defined in the scope of the block and can't
# be referenced outside the block locally, since it was never initialized
# locally.