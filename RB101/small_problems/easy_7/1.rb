=begin
Combine Two Lists
Write a method that combines two Arrays passed in as arguments, and returns
a new Array that contains all elements from both Array arguments, with the
elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the
same number of elements.

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

P
input: 2 arrays(same number or elements, not empty)
output: return new array (all elements in alternation)
rules
explicit:
write a method
takes 2 arguments
returns new array
alternate between elements in new array
both arrays have the same number of elements
neither array is empty
implicit:
the first array has the first element listed in new array

E
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

D
arrays

A
- write a method that takes two arrays(arguments) and returns a new array
- create a new array comprised of the 2 arrays
- Sort the new array by alternating between the two arrays

initialize an empty array `interleaved`
loop through integers 0 to array size - 1
  append the element at index of first array to `interleaved`
  append the elment at index of the second array
return `interleaved`  

initialize an empty array
combine first array with second array reversed
shift array add to empty array then pop and add to empty array
continue until array empty

* zip method
=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

def interleave(arr1, arr2)
  interleaved = []
  arr1.size.times do |index|
    interleaved << arr1[index]
    interleaved << arr2[index]
  end
  interleaved
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

def interleave(arr1, arr2)
  interleaved = []
  arr3 = arr1 + arr2.reverse
  arr1.size.times { |ele| interleaved << arr3.shift << arr3.pop }
  interleaved
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

#  Provided solution
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end
