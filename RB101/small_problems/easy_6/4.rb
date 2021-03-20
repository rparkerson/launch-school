=begin
Reversed Arrays (Part 1)
Write a method that takes an Array as an argument, and reverses its elements
in place; that is, mutate the Array passed into this method. The return
value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

Note: for the test case list = ['abc'], we want to reverse the elements
in the array. The array only has one element, a String, but we're not
reversing the String itself, so the reverse! method call should return
['abc'].

P
input: array
output: same array (with element order reversed)
rules
explicit:
return the same array mutated
the element order in the array should be reversed
don't reverse individual characters of elements (e.g. in strings)
do not use reverse or reverse! methods
implicit:
empty arrays return back the same empty array

E
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

D
array

A
- use destructive methods on the original array
- iterate over an array

add a index to each element destructively as a sub array
sort by that element *a, b <=>
delete index and sub array *flatten

can save items to an array then use *shift to save items back in
reverse order

can use a range to iterate through each index and append values of deleted
indexes
=end

def reverse!(arr)
  index = -1
  arr.map! { |ele| [ele, index += 1] }
  arr.sort! { |a, b| b[1] <=> a[1] }
  arr.map! { |ele| ele[0] }
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true

#  Provided Solution
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < (array.size / 2)
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  
  array
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true
