=begin
Sum of Sums
Write a method that takes an Array of numbers and then returns the sum
of the sums of each leading subsequence for that Array. You may assume
that the Array always contains at least one number.

Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

P
input: array (of numbers)
output: return integer(sum of sums of each leading sequence)
rules
explicit:
define a method
takes an array of numbers as argument
returns an integer
integer is the sum of the sums of each leading sequence in that array
assume the array contains at least 1 number
implicit:
the leading sequence always starts with the first array element
subsequences are equal to the number of array elements

E
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

D
array

A
- collect each combination of leading subsequence in the array
- find the sum of that subsequence
- add all those sums together

- initialize a `total` variable set to 0
- initialize `count` variable set to 1
- loop through the array
  - starting at index 0 count 1 element
    - add the sum of those element(s) to `total`
    - increment count by 1
    - repeat until count is at the array size
- return `total`
=end

def sum_of_sums(array)
  total = 0
  count = 1
  while count <= array.size
    total += array[0, count].sum
    count += 1
  end
  total
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

def sum_of_sums(array)
  total = 0
  array.size.times { |num| total += array[0, num + 1].sum }
  total
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

# Provided solution
def sum_of_sums(array)
  sum_total = 0
  accumulator = 0

  array.each do |num|
    accumulator += num
    sum_total += accumulator
  end
  
  sum_total
end

p sum_of_sums([3, 5, 2]) == 21
