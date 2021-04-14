=begin
Merge Sorted Lists
Write a method that takes two sorted Arrays as arguments, and returns
a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result
array. You must build the result array one element at a time in the
proper order.

Your solution should not mutate the input arrays.

Examples:

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

P
input: 2 sorted arrays as arguments
output: return a new array
explicit rules:
write a method
both arrays are individually sorted
you may not use a solution that requires you to sort the result array
You must build the result array one element at a time in the proper order
do not mutate the input arrays
the new array must be in sorted order and contain the two arrays
implicit:
the new array must be interleaved with other array elements
if the arrays are different sizes the longer array fills in first
questions:
are the 2 arrays elements the same type of literals
will the arrays ever have a nil object in them? - not - specified unknown
D
arrays

A
- initialize an empty result array
- iterate through arr1 and arr2 and find the lower number
  - append next lowest number to result array
- return result array

*zip?
=end
# Might technically meet the requirments but not the point of the exercise
def merge(arr1, arr2)
  not_result_array = (arr1 + arr2).sort
  result = not_result_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

def merge(arr1, arr2)
  result = []
  not_result = (arr1 + arr2).sort
  not_result.each { |element| result << element}
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

=begin
Without using sort
A
- initialize an empty result array
- initialize 2 separate comparision variables
- loop through the indexes 
  - compare the 2 elements at the same index
  - if array has no value or is nil add other arrays element
  - break if both values at indexes are nil
  - if one is lower add it to the array and move to next value
  - if one is higher than save it to compare to the next value
- return result array
=end
require 'pry'
def merge(arr1, arr2)
  result = []
  index1 = 0
  index2 = 0

  loop do
    value1 = arr1[index1] 
    value2 = arr2[index2]

    if value1.nil? && value2.nil?
      break
    elsif value1.nil?
      result << value2
      next index2 += 1
    elsif value2.nil?
      result << value1
      next index1 += 1
    end
    
    case value1 <=> value2
    when -1
      result << value1
      index1 += 1
    when 1 then
      result << value2
      index2 += 1
    else
       result << value1 << value2
       index1 += 1
       index2 += 1
    end
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

# Refactored
def merge(arr1, arr2)
  result = []
  index1 = 0
  index2 = 0

  loop do
    value1 = arr1[index1] 
    value2 = arr2[index2]

    if (arr1.size - 1) < index1 && (arr2.size - 1) < index2
      break
    elsif (arr1.size - 1) < index1
      result << value2
      next index2 += 1
    elsif (arr2.size - 1) < index2
      result << value1
      next index1 += 1
    end
    
    case value1 <=> value2
    when -1
      result << value1
      index1 += 1
    when 1 then
      result << value2
      index2 += 1
    else
       result << value1 << value2
       index1 += 1
       index2 += 1
    end
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

=begin
A
- initialize an empty result array
- create index2 variable for second array
- iterate over the first array
  - if array 2 value at index2 is less than arr1 value
    and array 2 index2 is less than or equal to arr2 size - 1
    - append arr2 value to result
    - increment index2 by 1
  
- append the remaining elements of arr2 to result
- return result array
=end
def merge(arr1, arr2)
  index2 = 0
  result = []

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] < value
      result << arr2[index2]
      index2 += 1
    end
    result << value
  end
  result += arr2[index2..-1]
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

# Provided Solution
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
