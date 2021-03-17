=begin
Practice Problem 1
How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

P
input: array (string numbers)
output: array (descending numeric value)
rules
explicit:
order descending numeric value
implicit:
keep array elements as strings
questions:
can we mutate the array ? not specified

E
arr = ['10', '11', '9', '7', '8']
# => ['11', '10', '9', '8', '7']

D
arrays

A
- convert elements to integers
- reverse sort elements as integers
- convert elements back to strings

sort by the elements as integers
  return the array of sorted strings
reverse sorted array

=end

arr = ['10', '11', '9', '7', '8']
p arr.sort_by(&:to_i).reverse

arr = ['10', '11', '9', '7', '8']
p(arr.sort do |a, b|
  b.to_i <=> a.to_i
end)
