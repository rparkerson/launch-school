=begin
P
input: array of positive integers
output: return the average of all the numbers (integer)
the array will never be empty
the array always contains positive integers
mental model: find the average of the of the numbers in the array and 
then return that number
What is average defined as? sum total / number of elements 
E
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
D
array
A
Take the sum of all the elements in the array
divide the total by the number of elements in the array
return that value as an integer
=end

def average(array)
  array.sum / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further Exploration
def average(array)
  sum = array.reduce { |sum, number| sum + number }
  sum.to_f / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin
input: array (of integers)
output: integer (average)
rules:
create a method
takes 1 argument
returns an integer
- the array will never be empty
- the numbers in the array will always be positive
- formula for the average is adding the array and dividing by number in the
arry
question:
what is the definition here for average?
=end

def average(arr)
  arr.sum / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
