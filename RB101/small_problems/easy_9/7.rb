=begin
Name Swapping
Write a method that takes a first name, a space, and a last name passed as
a single String argument, and returns a string that contains the last name,
a comma, a space, and the first name.

Examples

swap_name('Joe Roberts') == 'Roberts, Joe'

P
input: string
output: return string (new formatting)
rules
explcit:
return a string with the last name, comma, space, first name

E
swap_name('Joe Roberts') == 'Roberts, Joe'

D
string
array

A
- convert the string to an array of words (elements divided at whitespace)
- reverse array
- join as a string with a comma, space in between
=end

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

def swap_name(name)
  space_index = name.index(' ')
  "#{name[space_index + 1..-1]}, #{name[0...space_index]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

def swap_name(full_name)
  name = full_name.split
  "#{name.last}, #{name.first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
