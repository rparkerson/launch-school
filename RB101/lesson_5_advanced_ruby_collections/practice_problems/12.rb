=begin
Practice Problem 12
Given the following data structure, and without using the Array#to_h method,
write some code that will return a hash where the key is the first item in
each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: 
{:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

P
input: array(of subarrays)
output: hash (each key is the first sub-array element and each value
is the second sub-array element)
rules
explicit:
no using the Array#to_h method
return a hash
hash key is first sub-array element
hash value is second sub-array element
questions:
can we use another Class#to_h method? yes - wasn't prohibited

E
=>
{:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

D
array and hashes

A
- initialize an empty hash hsh
- iterate through each array element
- set each of the elements in sub array to correct key value pair 

=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}
arr.each do |sub_arr|
  hsh[sub_arr[0]] = sub_arr[1]
end
p hsh

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
p arr.each_with_object({}) { |sub_arr, hsh| hsh[sub_arr[0]] = sub_arr[1] }

