=begin
Multiply All Pairs
Write a method that takes two Array arguments in which each Array contains
a list of numbers, and returns a new Array that contains the product of
every pair of numbers that can be formed between the elements of the two
Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

P
input: 2 arrays as arguments (list of numbers)
output: return new array (every product combination)
rules
exmplicit:
define a method
takes 2 arrays as arguments
returns a new array
new array contains every product of every pair of numbers between the 2 arrays
sort the new array by increasing value
assume neither argument array is empty
implicit:
only take number combinations starting from the first array (arr1[0] * 
  arr2[0] but NOT arr2[0] * arr1[0])
keep repeated values in the new array
questions:
are numbers always integers? floats?, negative? - would not change outcome

E
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

D
arrays

A
- define a method takes 2 arrays and returns a new array
- multiply every combination of element once
- store products in a new array
- sort new array

- iterate through arr1 *map (map the results into an array)
  - iterate through arr2
    - multiply each element of arr2 by each element of arr 1
- sort and flatten end result*

*product to multiply arrays and created multi-dimensional array
*sort to order by increasing value
=end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |sub_arr| sub_arr.reduce(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])# == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs(arr1, arr2)
  arr1.map { |num1| arr2.map { |num2| num1 * num2 } }.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])# == [2, 4, 4, 6, 8, 8, 12, 16]

#  Multi-line version
def multiply_all_pairs(arr1, arr2)
  arr1.map do |num1| 
    arr2.map { |num2| num1 * num2 }
  end.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])# == [2, 4, 4, 6, 8, 8, 12, 16]

#  Provided Solution(compact version)
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])# == [2, 4, 4, 6, 8, 8, 12, 16]
