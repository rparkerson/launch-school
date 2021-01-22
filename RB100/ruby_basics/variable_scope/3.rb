# What will the following code print, and why?

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a 

# This will print 7.  a points to 7 and passes the value 12(7+5) to the method
# through the parameter.  local variable a is never reassigned, the method
# scope a is different. The method definition is self-contained with respect
# to local variables.