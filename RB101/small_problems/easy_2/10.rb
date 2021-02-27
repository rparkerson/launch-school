array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
array1 and and array2 are initialized and point to seperate array objects.
each is invoked on array1 which iterates through each element and appends
those elements to array2 which then looks identical to array1 but is still
a different object, although the elements are the same objects.
The each loop copies the references from array1
array1 calls each on itself and mutates certain elements
that meet a condition.  array2 is a different object than array1 but
the elements in it contain the same objects as array1 so they will mutate too.
array2 will still look the same as the array1 with both the arrays elements
mutated with upcase!  puts outputs its elements modified by upcase!
=end
