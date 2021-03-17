=begin
Practice Problem 10
Given the following data structure and without modifying the original array,
use the map method to return a new array identical in structure to the
original but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

P
input: array
output: new array (each integer += 1)
rules
explicit:
return a new array do not mutate the original
use map method
same structure format
all integers values incremented by 1

E
=> [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

D
arrays

A
- reference each value in the element hashes
- increase all the integer values by 1

iterate over the elements (hash) *use map
  create a copy of hash
  iterate over each key value pair with copy hash
    increment each value by 1
return the new array
 
=end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
p(arr.map do |hash|
    new_hash = hash.dup
    new_hash.map do |letter, number|
      new_hash[letter] = number + 1
    end
    new_hash
  end)
p arr

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
p(arr.map do |hash|
    new_hash = {}
    hash.map do |letter, number|
      new_hash[letter] = number + 1
    end
    new_hash
  end)
p arr

array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
p(array.each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end)
p array
