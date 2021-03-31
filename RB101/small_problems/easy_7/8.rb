=begin
Multiply Lists
Write a method that takes two Array arguments in which each Array contains
a list of numbers, and returns a new Array that contains the product of
each pair of numbers from the arguments that have the same index. You may
assume that the arguments contain the same number of elements.

Examples:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

P
input: 2 array arguments(list of numbers)
output: return new array (product of each pair of numbers from same index)
rules
explicit:
define a method
takes 2 arguments(arrays)
returns a new array
new array contains the products of 2 arguments at the same indices 
assume the argument arrays have the same number of elements
implicit:

E
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

D
array

A
- define a method that takes 2 arrays as 2 arguments and returns a new array
- find the product of each elelment at each index
- save values in a new array
- return the new array

- initialize an empty array `product`
- iterate over a range of 0 to array size
  - multiply array 1 at index by array 2 at index and append to `product`
- return product

=end

def multiply_list(arr1, arr2)
  product = []
  arr1.size.times { |index| product << (arr1[index] * arr2[index]) }
  product
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

def multiply_list(arr1, arr2)
  arr1.size.times.map { |index| arr1[index] * arr2[index] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
