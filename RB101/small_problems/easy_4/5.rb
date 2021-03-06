=begin
Write a method that searches for all multiples of 3 or 5 that lie between
1 and some other number, and then computes the sum of those multiples.
For instance, if the supplied number is 20, the result should be 
98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.
P
input: integer(positive)
output: integer(sum of multiples)
rules:
explicit:
Given number find multiples of 3 or 5 from 1 to number
multiples are increments of 3 and 5
find the sum of those multiples
implicit:
include the number if it is a multiple
every multiple must be uniq
mental model:
define a method that takes an integer as an argument and returns the sum
of the mutiples of 3 or 5 between 1 and that integer.

Examples

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

D
Array

A
Given an integer 'number'
Initialize an empty array 'multiples'
Find all multiples of 3 and 5 and append them to 'multiples'
  loop through 1 through'number'
  check each element in loop and set to 'element'
  if 'element' % 3 == 0 or % 5 == 0 append 'element' to 'multiples'
find the sum of all integers in 'multiples'
return the value of the sum of 'multiples'
=end

def multisum(number)
  multiples = []
  (1..number).each do |element|
    if element % 3 == 0 || element % 5 == 0
      multiples << element
    end
  end
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

def multisum(number)
  (1..number).select do |element|
    element % 3 == 0 || element % 5 == 0
  end.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

def multisum(number)
  (1..number).select { |num| num % 3 == 0 || num % 5 == 0 }.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

#  Further Exploration
