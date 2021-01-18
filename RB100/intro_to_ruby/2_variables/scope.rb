# scope.rb

# a = 5           # variable is initialized it the outer scope

# 3.times do |n|  # method invocation with a block
#   a = 3         # is a accessible here, in an inner scope?
#   b = 5         # b is initialized in the inner scope
# end

# puts a
# puts b          # is b accessible here, in the outer scope?  -Nope

arr = [1, 2, 3]

for i in arr do   # for...do/end code does NOT create new inner scope
  a = 5        # a is initialized here
end

puts a         # is it accessible here?    -Yep

# Types of variables

MY_CONSTANT = 'I am available throughout your app.'

$var = 'I am also available throughout your app.'

@@instances = 0  # available in instance as well as the class

@var = 'I am available throughout the current instance of this class'

local_var = ' I must be passed around to cross scope boundaries.'





