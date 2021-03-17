=begin
Practice Problem 15
Given this data structure write some code to return an array which contains
only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

P
input: array (3 element array of hashes)
output: array(only the hashes where all the integers are even)
rules
explicit:
return an array
array contains only the hashes with even integers
implicit:
integers are an the values arrays of hashes

E
=> [{e: [8], f: [6, 10]}]

D
arrays and hashes

A
- iterate through the elements(hashes) of arr
- check if the hashes values include any odd integers
- return an array of hashes without odd integers

iterate through arr elements hash
  select hashes if values include only odd integers
return array of hashes

=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
arr2 =
arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end
p arr2

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
arr2 =
arr.select do |hash|
  hash.values.flatten.all? { |num| num.even? }
end
p arr2
