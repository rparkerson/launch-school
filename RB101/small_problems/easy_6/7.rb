=begin
Halvsies

Write a method that takes an Array as an argument, and returns two Arrays
(as a pair of nested Arrays) that contain the first half and second half
of the original Array, respectively. If the original array contains an
odd number of elements, the middle element should be placed in the first
half Array.

Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

P
input: array
output: array of 2 sub arrays(contain first and second half of array elements)
rules
explicit:
return a nested array
if there is an odd number of elements the first array gets middle element
implicit:
arrays should maintain the element orders

E
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

D
arrays

A
- determine how many elements go into array 1
- place half the elements in array 1
- place other half in array 2
- place the 2 new arrays into another array

- divide the array by 2 and check if there was a remainder (divmod)
  - if no remaineder put index 0 through half - 1 in arr1
  - elsif if remainder put 0 through half in arr1
  - put remaining in arr2
    - half +1 to last element * [-1]

=end

def halvsies(array)
  half = array.size.divmod(2)
  [array[0, half.sum], array[half.sum, half[0]]]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

def halvsies(array)
  half = array.size.divmod(2)
  [] << array[0, half.sum] << array[half.sum, half[0]]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

def halvsies(array)
  half = array.size.divmod(2)
  first_half = array[0, half.sum]
  second_half =  array[half.sum, half[0]]
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

def halvsies(array)
  half = array.size.divmod(2)
  first_half = array.slice(0, half.sum)
  second_half =  array.slice(half.sum, half[0])
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

def halvsies(array)
  half = array.size.divmod(2)
  [] << array.slice!(0, half.sum) << array
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

def halvsies(array)
  half = array.size.divmod(2)
  [array.slice!(0, half.sum), array]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

def halvsies(array)
  [array.slice!(0, (array.size / 2.0).ceil), array]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

#  Further Exploration
# The solution provided uses 2.0 so that the half value isn't lost
# This is used to determine if it is an odd number of integers and
# how many elements go into the first array.
