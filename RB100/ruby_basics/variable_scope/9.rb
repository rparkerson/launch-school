a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a


# What will the following code print, and why?

# This will print 7.  The block parameter takes priority over the outside
# variable with the same name.  Shadowing occurs when a block argument hides
# a local variable that is defined outside the block.