a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a


# What will the following code print, and why?

# This will print 3, because the variable `a` within the block passed to the
# each method reassigns `a` variable and is referencing the same
# variable outside the block. So `a` now references the last element to be
# assigned, 3.  Blocks can see local variables but outside can't see
# inside blocks.  
# Blocks are like a room with a one way mirror windows that can only see
# out.  But others can't see in.
