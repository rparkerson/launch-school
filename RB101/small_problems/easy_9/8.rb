=begin
Sequence Count
Create a method that takes two integers as arguments. The first argument is
a count, and the second is the first number of a sequence that your method
will create. The method should return an Array that contains the same number
of elements as the count argument, while the values of each element will be
multiples of the starting number.

You may assume that the count argument will always have a value of 0 or
greater, while the starting number can be any integer value. If the count
is 0, an empty list should be returned.

Examples:

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

P
input: 2 integers as 2 arguments
output: return an array
rules
explicit:
return an array with number of elements equal to first argument
second argument is the starting array element
second argument determines the multiples
count argument will always be 0 or greater
count argument 0 returns an empty array
implicit:
increment or decrement by the second number depending if positive or negative

E
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

D
Array

A
- iterate through an array argument 1 number of times
- add the second number to 0 that number of times
- return an array with each of those values as an element

=end

def sequence(num1, num2)
  num1.times.map { |n| (n + 1) * num2 }
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

def sequence(count, first)
  (1..count).map { |value| value * first }
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

def sequence(count, first)
  sequence = []
  number = first

  while sequence.size < count
    sequence << number
    number += first
  end

  sequence
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
