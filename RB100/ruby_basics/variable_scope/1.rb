# What will the following code print and why? Don't run it until 
# you have tried to answer.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# This prints 7 because a is assigned to the value of 7 in the local scope
# and the method return value of 17 was never captured and a was reassigned
# in the method but that is an inner scope so the outer scope of a was not
# changed.

# In Ruby numbers are immutable so they could not be mutated within the
# method.  a remains 7 when it is printed with puts.  This is because 
# the value a was pointing to, 7, was passed to parameter b in the method 
# and then b was reassigned to point to 17.  The variable a still points
#  to 7.