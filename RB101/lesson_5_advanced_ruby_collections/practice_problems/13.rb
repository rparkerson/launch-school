=begin
Practice Problem 13
Given the following data structure, return a new array containing the same
sub-arrays as the original but ordered logically by only taking into
consideration the odd numbers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

The sorted array should look like this:

[[1, 8, 3], [1, 6, 7], [1, 4, 9]]

p
input: array(of 3 subarrays containing integers)
output: new array (sorted by only odd numbers)
rules
explicit:
return a new array
contain the same sub-arrays
order the sub-arrays only taking into account the odd numbers

E
=> [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

D
arrays

A
- iterate through the elements of given array arr
- filter the sub-arrays with only odd numbers
- sort these filtered sub arrays
- return a new array with sub-arrays elements in sorted order

=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
p(arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num if num.odd?
  end
end)

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
# => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
