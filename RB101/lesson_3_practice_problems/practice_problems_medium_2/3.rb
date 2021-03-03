=begin
Let's call a method, and pass both a string and an array as arguments
and see how even though they are treated in the same way by Ruby, the
results can be different.

Study the following code and state what will be displayed...and why:
the string object set to my_string is passed to a_string_param and then
a_string_param is set to reference a new object "rutabaga", so the my_string
reference is unchanged and printed on line 21.  the array object is mutated
within the method definition and now prints pumpkin and rutabaga outside
the method
=end

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# => My string looks like this now: pumpkins
# my_string == "pumpkins"
puts "My array looks like this now: #{my_array}"
# => My array looks like this now: ["pumpkins", "rutabaga"]
# an_array_param == ["pumpkins", "rutabaga"]
