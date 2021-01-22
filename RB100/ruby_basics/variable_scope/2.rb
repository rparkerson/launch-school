# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# This will print 7, because the parameter a in the my_value is different than
# the local variable a and is in a different scope although they have the
# same name; a.  The value 7 is passed to the parameter a and they my_value
# a then points to 17.  The outer scope a is still 7.