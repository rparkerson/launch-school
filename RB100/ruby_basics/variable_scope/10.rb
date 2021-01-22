a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a


# What will the following code print, and why?

# This would print 7, but an error is raised and line 11 is never executed.
# We can not see variables within a method.  Methods are
# like closed rooms with no windows in or out.  The block scope would
# usually reassign our variable but not in the case where the block is
# within a method definition.