# What will the following code print, and why?

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# I would expect this to print "Xyzzy" because the value a references was
# not changed since line 1.  The value "Xyzzy" was passed to b and then
# b was reassigned to reference something else.  Assignment to a variable
# (an object) never mutates the object that is referenced.