=begin
Practice Problem 11
Given the following data structure use a combination of methods, including
either the select or reject method, to return a new array identical in
structure to the original but containing only the integers that are multiples
of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

P
input: array of arrays containing integers
output: new array(same structure with integer that are multiples of 3)
rules
explicit:
return a new array
maintain the same array structure
new array must contain only multiples of 3 (others deleted or use select)
must use select or reject as one of the methods
implicit:
questions:
Do we return an empty array if no multiples? yes - to match structure

E
=> [[], [3], [9], [15]]

D
arrays

A
- iterate through every element of arr
- if that element contains a multiple of 3 keep it *select

*must use select or reject
iterate through each element save transformation to an array *map
  iterate through each sub-array *select
    check if sub-array element is a multiple of 3
    keep all the array elements that are multiples of 3 

=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
p(arr.map do |sub_arr|
  sub_arr.select { |num| num % 3 == 0 }
end)
p arr

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
p(arr.map do |sub_arr|
  sub_arr.reject { |num| num % 3 != 0 }
end)
p arr

#  without using p on the whole map method to output results
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr2 =
arr.map do |sub_arr|
  sub_arr.select { |num| num % 3 == 0 }
end
p arr2
p arr
