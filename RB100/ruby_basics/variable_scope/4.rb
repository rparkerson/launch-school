# What will the following code print, and why?

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# This will print "Xy-zy" because it uses string index reference which
# mutates the value a references, and replaces the character at index 2
# with - by assigning it in the method.  a and b reference the same string
# and the value of the string is changed so a points to the new value.
