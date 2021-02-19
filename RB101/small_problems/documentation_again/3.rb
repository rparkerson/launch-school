def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)  # => [4, 5, 3, 6]

# Default positional arguments
# Ruby fills in the missing arguments from left to right
# Default values that appear in the middle of positional arguments are
# allowed and a is assigned to 4 d is assigned to 6 then 5 is assigned to
# b and c uses its default value.

# Found in syntax then calling_methods docs
