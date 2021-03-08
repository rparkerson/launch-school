=begin
In the previous two exercises, you developed methods that convert simple
numeric strings to signed Integers. In this exercise and the next, you're
going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to
a string representation.

You may not use any of the standard conversion methods available in Ruby,
such as Integer#to_s, String(), Kernel#format, etc. Your method should do
this the old-fashioned way and construct the string by analyzing and
manipulating the number.

P 
Input: Integer(0 or positive)
Output: return string
rules
explicit:
may not use conversion methods from Ruby(to_s, String(), format)
construct string by analyzing and manipulating the number
implicit:
similar to last exercise
multiple leading zero's use just 1 0
mental model:
create a method (integer_to_string) that takes a single ingeger(0 or positive)
and returns the string representation
Examples

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

D
array

A
given a integer 'number'
intialize a constant DIGITS with keys 0 - 9 and values '0' through '9'
initialize an empty string 'string'
convert integer to string
  set integers to array 'integers'
  loop through array 'integers'
    for each iteration set 'char' to reference DIGITS value by 'char' key
    append that value to 'string'
return 'string' (representation of integer)
=end

def integer_to_string(integer)
  "#{integer}"
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

def integer_to_string(integer)
  p integer.digits.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = ''
  number.digits.each { |char| string.prepend(DIGITS[char]) }
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

=begin
Further Exploration:
How many mutating String methods can you find that do not end with a !.
    #clear
    #concat
    #replace
    #insert
    #prepend

Can you find any that end with a !, but don't have a non-mutating form?
No, not for string, hash or array

Does the Array class have any methods that fit this pattern?
    #append (same as #push)
    #clear
    #concat
    #delete
    #delete_at
    #delete_if (same as #reject!)
    #fill
    #insert
    #keep_if (same as #select!)
    #pop
    #prepend (same as #unshift)
    #shift

How about the Hash class?
    #clear
    #delete
    #delete_if (same as #reject!)
    #keep_if (same as #select!)
    #rehash (this one is interesting, and "sort of" mutates the original)
    #replace
    #shift
    #store
    #update (same as #merge!)

I notice that all of these have to do with adding to and/or removing the 
elements in an array (thinking of a string as a sort of pseudo-array 
of character elements here), rather than altering the elements themselves
in place. So, #upcase! alters the elements themselves, while #clear
wipes them all out."
Comment Reference by Bob Rhodes
=end
