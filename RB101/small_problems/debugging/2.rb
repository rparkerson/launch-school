=begin
HEY YOU!
String#upcase! is a destructive method, so why does this code print HEY you
instead of HEY YOU? Modify the code so that it produces the expected output.

On `line 7` the `shout_out_to` method is called and passed the string `'you'`
as an argument. Within the method definition the parameter `name` is initialized
to the argument string `you`. On `line 2` the `chars` method returns a
new array as an object with each character element in the array as new strings.

At this point the object referenced by the name parameter is a different object
from the `chars` method call return value so any mutating method called on the
characters of the `chars` returned array will not affect the string referenced
by `name`.

This is demonstrated when the `puts` on line 4 outputs the same object value 
that the name variable references in the output `'HEY you`, after the object
the vairable name referenced was concatenated with the string `'HEY `.


The object that is being mutated on
=end
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# Solution
def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# one provided solution:
def shout_out_to(name)
  puts 'HEY ' + name.upcase
end
