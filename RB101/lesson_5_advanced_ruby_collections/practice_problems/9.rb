=begin
Practice Problem 9
Given this data structure, return a new array of the same structure but with
the sub arrays being ordered (alphabetically or numerically as appropriate)
in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

P
input: array
output: new array ( sorted in descending order - with appropriate type)
rules
explicit:
return a new array
keep the same format
return in descending order
descending is numeric or alphabetical depending on element type
order the sub arrays
question:
should the array be ordered too? - not specified

E
=> [['c', 'b', 'a'], [3, 2, 1], ['green, 'blue', 'black']]

D
arrays

A
- sort each element in the sub array
- reverse the order of the sub array

iterate over every element(sub-array) in arr
  sort the elments
    by number if integer
    else by alphabetical for strings
  reverse the order(descending)
return a new array

=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
p(arr.map do |sub_array|
  sub_array.sort_by do |elements|
    elements
  end.reverse
end)

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
p arr.map { |sub_arr| sub_arr.sort.reverse }

# Solution provided
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
p(arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end)
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]

# Refactored 1 liner at the price of readability
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
p arr.map { |sub_arr| sub_arr.sort { |a, b| b <=> a } }
