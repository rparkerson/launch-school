=begin
Rotation (Part 1)
Write a method that rotates an array by moving the first element to the
end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

P
input: array
output: return new array (first element moved to the end of argument array)
rules
explicit:
write a method taht returns a new array
move the first element to the end of the array
do not modify the original array
do not use Array#rotate or Array#rotate!

E
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

D
array

A
- return a new array with the first element at the end
- do not modify the original

- copy the original array
- modify the copy by deleting the first element
- append the first element to the end
*clone or *dup

- iterate through the array
 - create a new array with array index - 1

=end

def rotate_array(arr)
  copy_arr = arr.clone
  copy_arr << copy_arr.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) # == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

def rotate_array(arr)
  arr.size.times.map do |index|
    next arr[0] if index == arr.size - 1
    arr[index + 1]
  end
end

p rotate_array([7, 3, 5, 2, 9, 1]) # == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_array('abcdef') # == 'bcdefa'

# Refactored
def rotate_array(arr)
  arr.size.times.map { |idx| idx == arr.size - 1 ? arr[0] : arr[idx + 1] }
end

p rotate_array([7, 3, 5, 2, 9, 1]) # == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_array('abcdef') # == 'bcdefa'

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) # == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

# Student Solution
def rotate_array(array)
  array.drop(1) + array.take(1)
end

# Further Exploration -rotate a string, rotate an integer, can use prev method
def rotate_array(object)
  type = object.class
  object = object.to_s if type == Integer

  arr = object.size.times.map do |index|
    next object[0] if index == object.size - 1
    object[index + 1]
  end

  return arr.join.to_i if type == Integer
  type == String ? arr.join : arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) # == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_array('abcdef') # == 'bcdefa'
p rotate_array(4321) # == '3214'
