array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# What will the following code print, and why?

# This will raise an error for a being undefined on line 7.  Blocks scoping
# rules allow them to see outside but others can't see inside.  This can
# be bypassed if we initialize a before the block is run.  Reassignment is
# modifying what the variable references so it affects the outer-most
# scope but if it is initialed in the block the outer-most scope can't see
# into the block.