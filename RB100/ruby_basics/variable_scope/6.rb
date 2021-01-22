# What will the following code print, and why?

a = 7

def my_value(b)
  b = a + a 
end

my_value(a)
puts a

# This will raise an error the method scope has not defined the `a` variable or
# method `a` within it.  Line `puts a` never runs.  Methods are self contained
# and can't see outside or vice versa.