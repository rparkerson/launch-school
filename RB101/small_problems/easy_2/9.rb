name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
This prints 
BOB
BOB

name is initialized on line 1 referencing the string object 'Bob'
`save_name` is assigned to the same value as name ('Bob') so both variables
name and save_name are pointing to the same object.  The string object is
mutated with an upcase! method invocation on line 4.  Both variables are 
output with puts and show the mutated object, 'BOB'
=end
