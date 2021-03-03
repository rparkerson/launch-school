=begin
To drive that last one home...let's turn the tables and have the string
show a modified output, while the array thwarts the method's efforts to
modify the caller's version of it.

result:
=> My string looks like this now: "pumpkinrutabaga"
=> My array looks like this now: ["pumpkins"]
`my_string` is initialized and references the string object "pumpkins" and
`my_array` references ["pumpkins"].  These are passed into the method and the
local variables within the methods are assigned to their values.  The string
is mutated in the method and the array is set to reference a new array, with
the original array unaffected.  The object mutation for string is visible 
outside the method definition and the my_array object is still the same.
=end

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
