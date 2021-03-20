=begin
Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the
array, false if it is not. You may not use the Array#include? method in
your solution.

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

P
input: argument array, and  argument(search value - integer, boolean etc.)
output: boolean (true if search value in array)
rules
explicit:
create a method takes 1 array amd 1 argument returns boolean
returns true if argument is in array
returns false if not
may not use Array#include?
implicit:
return value may be integer or boolean etc.
question:
are other similar include methods available? -not specified

E
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

D
array

A
- iterate through each element in array
- check if search value is equal to current element
- return true if match is found
- if no match is found return false

=end

def include?(array, value)
  array.each { |ele| return true if ele == value }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

#with select
def include?(array, value)
  !(array.select { |ele| ele == value }.empty?)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

# Provided Solution
def include?(array, value)
  !!array.find_index(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

def include?(array, value)
  (array + [value]).uniq == array
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

def include?(array, value)
  !!array.index(value)
end

p include?([1,2,3,4,5], 3)#== true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

def include?(array, value)
  array - [value] != array
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
