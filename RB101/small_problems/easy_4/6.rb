=begin
Write a method that takes an Array of numbers, and returns an Array
with the same number of elements, and each element has the running
total from the original Array.

P
Input: array(of number(s))
Output: return array
rules:
explicit:
returned array has the same number of elements as input array
returned arrays elements are the running total from original
implicit:
running total is using addition
questions:
Does this need to return the same array object but mutated?
Are all the numbers positive? in example yes
Are all numbers integers? in example yes

Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

D
arrays

A
given an array of numbers 'array'
initialize 'totals' array as an empty array
'sum' variable initialized to 0
loop through 'array' and keep the running total to each element in 
'totals' array
  for each element('num') in 'array' add 'num' to the 'sum' variable
  append 'sum' to 'totals'
return 'totals'
=end

def running_total(array)
  sum = 0
  array.map do |num|
    sum += num
  end
end

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []


#  Further Exploration (use Enumberable#each_with_object or #reduce)
def running_total(array)
  sum = 0
  counter = -1
  array.each_with_object([]) do |i, arr| 
    sum = arr[counter] + i if arr[counter] != nil
    if arr.empty?
      arr << i
    else 
      arr << sum
    end
    counter += 1
  end
end

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# student solutions
def running_total(arr)
  arr.reduce([]) { |arr, n| arr << (arr.last.to_i + n) }
end

def running_total(arr)
  arr.each_with_object([]) { |value, arr| arr << (value + arr.last.to_i)}
end
